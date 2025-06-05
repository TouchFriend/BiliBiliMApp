
// See http://iphonedevwiki.net/index.php/Logos

#import <UIKit/UIKit.h>


// 列表广告
%hook AdPGInfoModel

- (id)init {
//    %log((NSString *)@"cxzcxz");
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

%hook AdPegasusModel

- (id)init {
//    %log((NSString *)@"cxzcxz");
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

%hook AdPGCmInfoModel

- (id)init {
//    %log((NSString *)@"cxzcxz");
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

// 横幅广告

%hook BannerItemModel

- (id)init {
//    %log((NSString *)@"cxzcxz");
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

// 热门-热门话题
%hook BBHotTopicTopicListModel

- (id)initWithGPBMessage:(id)gpbmessage {
    %log((NSString *)@"cxzcxz");
    return nil;
}

%end

// 热门-推荐一个
%hook BBHotTopicRcmdOneItemModel

- (id)initWithGPBMessage:(id)gpbmessage {
    %log((NSString *)@"cxzcxz");
    return nil;
}

%end

 
%ctor {
    %init(
//          AdBaseModel = objc_getClass("BBAdModel.AdBaseModel")
          AdPGInfoModel = objc_getClass("BBAdPegasus.AdPGInfoModel"),
          AdPegasusModel = objc_getClass("BBAdPegasus.AdPegasusModel"),
          AdPGCmInfoModel = objc_getClass("BBAdPegasus.AdPGCmInfoModel"),
          BannerItemModel = objc_getClass("BBAdPegasus.BannerItemModel"),
        );
    
}

