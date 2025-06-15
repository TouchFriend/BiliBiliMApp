// 启动广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface BFCSplashWindow : UIWindow

@end

// 启动广告
%hook BFCSplashWindow

- (instancetype)initWithFrame:(CGRect)frame {
    NSLog(@"%@:%@-%s", nj_logPrefix, NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end
