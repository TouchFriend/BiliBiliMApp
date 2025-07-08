//
//  UIViewController+NJFind.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (NJFind)

/// 从根窗口递归查找目标控制器
/// - Parameter targetClass: 目标控制器类型
+ (UIViewController *_Nullable)findViewControllerOfClass:(Class)targetClass;


/// 递归查找目标控制器
/// - Parameters:
///   - vc: 在哪个viewController里查找
///   - targetClass: 目标控制器类型
+ (UIViewController *_Nullable)recursiveFindViewController:(UIViewController *)vc
                                      targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END
