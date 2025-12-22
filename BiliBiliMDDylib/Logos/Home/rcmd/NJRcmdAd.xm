// 主页-推荐的广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

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

// 打开推送通知弹窗
%hook BFCPushGuideSheetView

- (id)initWithModel:(id)model delegate:(id)delegate spmid:(id)spmid {
    return nil;
}

%end

// +号气泡弹窗，比如提示二次元妆造挑战
%hook BBPhoneTabBarBubbleView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}

