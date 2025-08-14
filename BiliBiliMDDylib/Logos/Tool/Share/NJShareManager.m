//
//  NJShareManager.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import <UIKit/UIKit.h>
#import "SSZipArchive.h"
#import "SVProgressHUD.h"
#import "UIApplication+NJCategory.h"

// 沙盒缓存文件夹
UIKIT_EXTERN NSString *const NJDiskCacheDirName;

@interface NJShareManager : NSObject
+ (void)shareCacheFolderFromViewController:(UIViewController *)presenter;
@end

@implementation NJShareManager


/// 分享缓存数据
+ (void)shareCacheFolder {
    UIViewController *topMostViewControlle = [UIApplication nj_topMostViewController];
    [self shareCacheFolderFromViewController:topMostViewControlle];
}

/// 分享缓存数据
/// - Parameter presenter: 要present的view controller
+ (void)shareCacheFolderFromViewController:(UIViewController *)presenter {
    // 1. 获取沙盒 Cache/NJCache 路径
    NSString *cacheDir = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject;
    NSString *folderPath = [cacheDir stringByAppendingPathComponent:NJDiskCacheDirName];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:folderPath]) {
        [SVProgressHUD showErrorWithStatus:@"文件不存在"];
        NSLog(@"[NJShareManager] 文件夹不存在: %@", folderPath);
        return;
    }
    
    // 2. 压缩路径
    NSString *tmpPath = NSTemporaryDirectory();
    NSString *timeStamp = [NSString stringWithFormat:@"%.0f", [[NSDate date] timeIntervalSince1970]];
    NSString *zipName = [NSString stringWithFormat:@"NJCache_%@.zip", timeStamp];
    NSString *zipPath = [tmpPath stringByAppendingPathComponent:zipName];
    
    // 3. 显示初始进度
    [SVProgressHUD showProgress:0.0 status:@"正在压缩..."];
    
    // 4. 后台线程压缩（带进度）
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        BOOL success = [SSZipArchive createZipFileAtPath:zipPath
                                 withContentsOfDirectory:folderPath
                                     keepParentDirectory:NO
                                        compressionLevel:-1
                                                password:nil
                                                     AES:NO
                                         progressHandler:^(NSUInteger entryNumber, NSUInteger total) {
            dispatch_async(dispatch_get_main_queue(), ^{
                float progress = (total == 0) ? 0 : (float)entryNumber / (float)total;
                [SVProgressHUD showProgress:progress status:[NSString stringWithFormat:@"正在压缩 %.0f%%", progress * 100]];
            });
        }];
        
        // 5. 压缩完成
        dispatch_async(dispatch_get_main_queue(), ^{
            [SVProgressHUD dismiss];
            
            if (!success) {
                [SVProgressHUD showErrorWithStatus:@"压缩失败"];
                NSLog(@"[NJShareManager] 压缩失败");
                return;
            }
            
            // 6. 调用系统分享
            NSURL *fileURL = [NSURL fileURLWithPath:zipPath];
            UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:@[fileURL] applicationActivities:nil];
            
            if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
                activityVC.popoverPresentationController.sourceView = presenter.view;
                activityVC.popoverPresentationController.sourceRect = CGRectMake(presenter.view.bounds.size.width / 2,
                                                                                  presenter.view.bounds.size.height / 2,
                                                                                  1.0, 1.0);
            }
            
            // 7. 分享完成后删除压缩包
            activityVC.completionWithItemsHandler = ^(UIActivityType activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {
                NSError *removeError = nil;
                [[NSFileManager defaultManager] removeItemAtPath:zipPath error:&removeError];
                if (removeError) {
                    NSLog(@"[NJShareManager] 删除压缩包失败: %@", removeError);
                } else {
                    NSLog(@"[NJShareManager] 已删除压缩包: %@", zipPath);
                }
            };
            
            [presenter presentViewController:activityVC animated:YES completion:nil];
        });
    });
}

@end

