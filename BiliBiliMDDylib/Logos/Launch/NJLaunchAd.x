// 启动广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

// 启动广告
%hook BFCSplashManager

- (id)showSplashWithStyle:(unsigned long long)style delegate:(id)delegate launchInfo:(id)info {
    /*
     1: "showBrandSplashWithDelegate:launchInfo:",  品牌启动，显示B站的品牌
     2: "showBusinessSplashSwift:launchInfo:",  业务启动，就是开屏广告
     3: "showEventSplashWithDelegate:launchInfo:",  事件启动
     */
    // 业务启动 改为 品牌启动
    if (style == 2) {
        return %orig(1, delegate, info);
    }
    return %orig;
}

%end

// 品牌启动
%hook BFCBrandSplashViewController

// 持续时间
- (void)setDuration:(double)duration {
    // 默认700.000000
    %orig(0);
}

%end

 
%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}

