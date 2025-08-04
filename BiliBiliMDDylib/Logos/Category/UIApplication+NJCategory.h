//
//  UIApplication+NJCategory.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (NJCategory)

/// 查找根窗口
+ (UIWindow *_Nullable)nj_keyWindow;

/// 查找前台ViewController
+ (UIViewController *_Nullable)nj_topMostViewController;

@end

NS_ASSUME_NONNULL_END
