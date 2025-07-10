// 主页-直播详情页广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "UIViewController+NJFind.h"

// 收入面板，包含礼物面板
%hook BBLiveRevenueCardsContentView

- (id)initWithDataSource:(id)source viewModel:(id)model {
    return nil;
}

%end

// 预约
// 预约按钮
%hook BBLiveBaseAppointmentEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

// 预约弹窗
@interface BBLiveBaseAppointmentCardView : NSObject

@end

%hook BBLiveBaseAppointmentCardView

- (id)initWithEntryFrame:(CGRect)frame {
    return nil;
}

%end

// 人气榜
%hook BBLiveBasePopularHotRankEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

%hook BBLiveBaseUserRankListEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

%hook BBLiveBasePopularRankEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

// 分区排行，比如娱乐新人
%hook BBLiveBaseAreaRankEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

%hook BBLiveBaseMixedRankEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

// 更多直播入口
%hook BBLiveRoomMoreEntranceView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

// 右下角活动，比如LOL投稿有奖
%hook BBLiveChainView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}


%end

// 弹幕下面的功能卡，比如游戏赛程卡
%hook BBLiveFunctionCardTaskManager

- (id)init {
    return nil;
}

%end

//  顶部吊坠，比如LOL观赛福利入口、红包、心愿单
@interface BBLiveVerticalCenterBar : NSObject

@property (retain, nonatomic) UIView *topPendantContainerView;

@end

%hook BBLiveVerticalCenterBar

- (void)layoutTopPendantContainerView {
    %log(nj_logPrefix);
    [self.topPendantContainerView removeFromSuperview];
    self.topPendantContainerView = nil;
}

%end

