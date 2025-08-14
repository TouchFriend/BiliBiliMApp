//
//  NJShareManager.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJShareManager : NSObject

/// 分享缓存数据
+ (void)shareCacheFolder;

/// 分享缓存数据
/// - Parameter presenter: 要present的view controller
+ (void)shareCacheFolderFromViewController:(UIViewController *)presenter;

@end

NS_ASSUME_NONNULL_END
