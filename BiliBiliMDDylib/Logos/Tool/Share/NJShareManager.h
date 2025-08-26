//
//  NJShareManager.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJShareManager : NSObject

/// 分享缓存数据
- (void)shareCacheFolder;

/// 分享缓存数据
/// - Parameter sourceView: sourceView
- (void)shareCacheFolderWithSourceView:(nullable UIView *)sourceView;

/// 分享缓存数据
/// - Parameter presenter: 要present的view controller
/// - Parameter sourceView: sourceView
- (void)shareCacheFolderFromViewController:(UIViewController *)presenter
                                sourceView:(nullable UIView *)sourceView;

/// 屏幕旋转
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator;

@end

NS_ASSUME_NONNULL_END
