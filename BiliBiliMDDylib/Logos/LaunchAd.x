#import <UIKit/UIKit.h>

@interface BFCSplashWindow : UIWindow

@end

// 启动广告
%hook BFCSplashWindow

- (instancetype)initWithFrame:(CGRect)frame {
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end
