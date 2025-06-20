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

// 评分弹窗
%hook BFCStoreScorePopupManager

+ (void)showWithNeed:(id)need close:(id)close {
    
}

+ (void)showFromJSBWithNeed:(id)need close:(id)close {
    
}

+ (void)showWithParam:(id)param need:(id)need close:(id)close {
    
}

- (void)showWithAttentionCount:(unsigned long long)attentionCount shareCount:(unsigned long long)shareCount likeCount:(unsigned long long)likeCount watchVideoCount:(unsigned long long)watchVideoCount popperConfig:(id)config {
    
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

