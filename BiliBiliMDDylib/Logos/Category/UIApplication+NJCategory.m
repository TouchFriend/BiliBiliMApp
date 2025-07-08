//
//  UIApplication+NJCategory.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/8.
//

#import "UIApplication+NJCategory.h"

@implementation UIApplication (NJCategory)

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



@end
