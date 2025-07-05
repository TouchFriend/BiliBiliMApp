// 主页-推荐的广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"


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


