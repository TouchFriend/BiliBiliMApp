
// See http://iphonedevwiki.net/index.php/Logos
// 主页广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

// 列表广告
%hook AdPGInfoModel

- (id)init {
    NSLog(@"%@:%@-%s", nj_logPrefix, NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

%hook AdPegasusModel

- (id)init {
    NSLog(@"%@:%@-%s", nj_logPrefix, NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

%hook AdPGCmInfoModel

- (id)init {
    NSLog(@"%@:%@-%s", nj_logPrefix, NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

// 横幅广告

%hook BannerItemModel

- (id)init {
    NSLog(@"%@:%@-%s", nj_logPrefix, NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

// 热门-热门话题
%hook BBHotTopicTopicListModel

- (id)initWithGPBMessage:(id)gpbmessage {
    %log((NSString *)nj_logPrefix);
    return nil;
}

%end

// 热门-推荐一个
%hook BBHotTopicRcmdOneItemModel

- (id)initWithGPBMessage:(id)gpbmessage {
    %log((NSString *)nj_logPrefix);
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

