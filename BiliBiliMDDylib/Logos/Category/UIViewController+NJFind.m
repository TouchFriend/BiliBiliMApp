//
//  UIViewController+NJFind.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/8.
//

#import "UIViewController+NJFind.h"
#import "UIApplication+NJCategory.h"

@implementation UIViewController (NJFind)

+ (UIViewController *)findViewControllerOfClass:(Class)targetClass {
    UIWindow *keyWindow = [UIApplication nj_keyWindow];
    UIViewController *rootVC = keyWindow.rootViewController;
    return [self recursiveFindViewController:rootVC targetClass:targetClass];
}

// 递归目标控制器方法查找方法
+ (UIViewController *)recursiveFindViewController:(UIViewController *)vc
                                      targetClass:(Class)targetClass {
    if ([vc isKindOfClass:targetClass]) {
        return vc;
    }

    // UINavigationController
    if ([vc isKindOfClass:[UINavigationController class]]) {
        for (UIViewController *child in ((UINavigationController *)vc).viewControllers) {
            UIViewController *found = [self recursiveFindViewController:child targetClass:targetClass];
            if (found) return found;
        }
    }

    // UITabBarController
    if ([vc isKindOfClass:[UITabBarController class]]) {
        for (UIViewController *child in ((UITabBarController *)vc).viewControllers) {
            UIViewController *found = [self recursiveFindViewController:child targetClass:targetClass];
            if (found) return found;
        }
    }

    // Presented
    if (vc.presentedViewController) {
        UIViewController *found = [self recursiveFindViewController:vc.presentedViewController targetClass:targetClass];
        if (found) return found;
    }

    // Child view controllers
    for (UIViewController *child in vc.childViewControllers) {
        UIViewController *found = [self recursiveFindViewController:child targetClass:targetClass];
        if (found) return found;
    }

    return nil;
}

@end
