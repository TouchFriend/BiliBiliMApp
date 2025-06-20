// 启动广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface BFCSplashWindow : UIWindow

@end

// 启动广告
%hook BFCSplashWindow

- (instancetype)initWithFrame:(CGRect)frame {
    return nil;
}

%end
