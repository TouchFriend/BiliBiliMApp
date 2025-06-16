
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

@interface BBHotTopicSmallCoverV5Model : NSObject

- (id)smallCoverV5;
- (id)base;
- (NSString *)fromType;

@end

// 热门-后台添加，固定位置的广告
%hook BBHotTopicSmallCoverV5Model

- (id)initWithGPBMessage:(id)gpbmessage {
    BBHotTopicSmallCoverV5Model *model = %orig;
    if ([[[[model smallCoverV5] base] fromType] isEqualToString:@"operation"]) {
        return nil;
    }
    return model;
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

