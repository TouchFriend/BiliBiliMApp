//
//  UIApplication+NJCategory.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/8.
//

#import "UIApplication+NJCategory.h"

@implementation UIApplication (NJCategory)

/// 查找根窗口
+ (UIWindow *)nj_keyWindow {
    UIWindow *rootWindow = nil;

    if (@available(iOS 13.0, *)) {
        for (UIWindowScene *scene in [UIApplication sharedApplication].connectedScenes) {
            if (scene.activationState == UISceneActivationStateForegroundActive &&
                [scene isKindOfClass:[UIWindowScene class]]) {
                for (UIWindow *window in scene.windows) {
                    if (window.isKeyWindow) {
                        rootWindow = window;
                        break;
                    }
                }
                if (rootWindow) break;
            }
        }
    } else {
        rootWindow = [UIApplication sharedApplication].keyWindow;
    }

    return rootWindow;
}


/// 查找前台ViewController
+ (UIViewController *_Nullable)nj_topMostViewController {
    UIWindow *keyWindow = [self nj_keyWindow];
    UIViewController *root = keyWindow.rootViewController;
    return [self nj_findTopController:root];
}

+ (UIViewController *_Nullable)nj_findTopController:(UIViewController *)vc {
    if (!vc) return nil;
    // presented 弹出
    if (vc.presentedViewController) {
        return [self nj_findTopController:vc.presentedViewController];
    }
    // UINavigationController
    if ([vc isKindOfClass:UINavigationController.class]) {
        UINavigationController *nav = (UINavigationController *)vc;
        return [self nj_findTopController:nav.visibleViewController];
    }
    // UITabBarController
    if ([vc isKindOfClass:UITabBarController.class]) {
        UITabBarController *tab = (UITabBarController *)vc;
        return [self nj_findTopController:tab.selectedViewController];
    }
    return vc;
}


@end
