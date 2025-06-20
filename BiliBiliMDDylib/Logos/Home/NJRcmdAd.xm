// 主页-推荐的广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

// 列表广告
%hook AdPGInfoModel

- (id)init {
    return nil;
}

%end

%hook AdPegasusModel

- (id)init {
    return nil;
}

%end

%hook AdPGCmInfoModel

- (id)init {
    return nil;
}

%end

// 横幅广告

%hook BannerItemModel

- (id)init {
    return nil;
}

%end

%ctor {
    %init(
          AdPGInfoModel = objc_getClass("BBAdPegasus.AdPGInfoModel"),
          AdPegasusModel = objc_getClass("BBAdPegasus.AdPegasusModel"),
          AdPGCmInfoModel = objc_getClass("BBAdPegasus.AdPGCmInfoModel"),
          BannerItemModel = objc_getClass("BBAdPegasus.BannerItemModel"),
        );
    
}

