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
#import "NSDate+NJCategory.h"

// 沙盒缓存文件夹
UIKIT_EXTERN NSString *const NJDiskCacheDirName;

@interface NJShareManager : NSObject <UIPopoverPresentationControllerDelegate>

/// 活动vc
@property (nonatomic, strong) UIActivityViewController *activityViewController;
/// presenter
@property (nonatomic, strong) UIViewController *presenter;
/// sourceView
@property (nonatomic, strong) UIView *sourceView;


@end

@implementation NJShareManager

/// 分享缓存数据
- (void)shareCacheFolder {
    [self shareCacheFolderWithSourceView:nil];
}

/// 分享缓存数据
/// - Parameter sourceView: sourceView
- (void)shareCacheFolderWithSourceView:(nullable UIView *)sourceView {
    UIViewController *topMostViewControlle = [UIApplication nj_topMostViewController];
    [self shareCacheFolderFromViewController:topMostViewControlle sourceView:sourceView];
}

/// 分享缓存数据
/// - Parameter presenter: 要present的view controller
/// - Parameter sourceView: sourceView
- (void)shareCacheFolderFromViewController:(UIViewController *)presenter
                                sourceView:(nullable UIView *)sourceView {
    self.presenter = presenter;
    self.sourceView = sourceView;
    
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
    NSString *timeStamp = [NSDate nj_currentTimestampString];
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
            self.activityViewController = activityVC;
            if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
                activityVC.popoverPresentationController.delegate = self;
                activityVC.popoverPresentationController.sourceView = [self getSourceView];
                activityVC.popoverPresentationController.sourceRect = [self calculateSourceRect];
            }
            
            // 7. 分享完成后删除压缩包
            __weak typeof(self) weakSelf = self;
            activityVC.completionWithItemsHandler = ^(UIActivityType activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {
                NSError *removeError = nil;
                [[NSFileManager defaultManager] removeItemAtPath:zipPath error:&removeError];
                if (removeError) {
                    NSLog(@"[NJShareManager] 删除压缩包失败: %@", removeError);
                } else {
                    NSLog(@"[NJShareManager] 已删除压缩包: %@", zipPath);
                }
                // 清除引用
                if (weakSelf) {
                    weakSelf.activityViewController = nil;
                    weakSelf.presenter = nil;
                    weakSelf.sourceView = nil;
                }
            };
            
            [presenter presentViewController:activityVC animated:YES completion:nil];
        });
    });
}

/// 屏幕旋转
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    if (!self.activityViewController) {
        return;
    }
    
    // 使用 __weak 避免循环引用
    __weak typeof(self) weakSelf = self;
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
            weakSelf.activityViewController.popoverPresentationController.sourceRect = [weakSelf calculateSourceRect];
        } completion:nil];
    }
}

/// 获取sourceView
- (UIView *)getSourceView {
    if (self.sourceView) {
        return self.sourceView;
    }
    return self.presenter.view;
}

/// 计算sourceRect
- (CGRect)calculateSourceRect {
    if (self.sourceView) {
        return CGRectMake(self.sourceView.bounds.size.width * 0.5,
                          self.sourceView.bounds.size.height * 0.5,
                          1.0,
                          1.0);
    }
    return CGRectMake(self.presenter.view.bounds.size.width / 2,
                      self.presenter.view.bounds.size.height,
                      1.0,
                      1.0);
}

#pragma mark - UIPopoverPresentationControllerDelegate

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller traitCollection:(nonnull UITraitCollection *)traitCollection {
    return UIModalPresentationNone; // 使用弹窗样式
}

@end

