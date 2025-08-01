// 启动广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

@interface BFCSplashWindow : UIWindow

@end

// 启动广告
%hook BFCSplashWindow

- (instancetype)initWithFrame:(CGRect)frame {
    return nil;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
