// 主页-直播详情页广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

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

// 全屏topBar
@interface BBLivePoliticalFullScreenTopBar : UIView

// 用户排名列表
@property (retain, nonatomic) UIView *userRankListEntryView;

@end

%hook BBLivePoliticalFullScreenTopBar

- (void)layoutSubviews {
    %orig;
    // 用户排名列表
    [self.userRankListEntryView removeFromSuperview];
    self.userRankListEntryView = nil;
}

- (void)_updateUserRankListEntryViewIfNeed {
    
}

%end

// 竖屏topBar
@interface BBLiveVerticalTopBar : UIView

// 用户排名列表
@property (retain, nonatomic) UIView *userRankListEntryView;

@end

%hook BBLiveVerticalTopBar

- (void)layoutSubviews {
    %orig;
    // 用户排名列表
    [self.userRankListEntryView removeFromSuperview];
    self.userRankListEntryView = nil;
}

- (void)_updateUserRankListEntryViewIfNeed {
    
}

%end

// 人气榜
%hook BBLiveBasePopularHotRankEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end


// 人气榜
%hook BBLiveBasePopularRankEntryView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

%hook BBLiveVerticalPanelViewController

- (id)popularRankEntryViews {
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

// 右上角入口，比如观赛活动、更多直播入口
%hook BBLiveTopRightEntranceManager

- (id)init {
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

// 弹幕下面的购物说明卡，比如热门抢购卡
%hook BBLiveShoppingExplainCardViewModel

- (id)initWithDataSource:(id)source tracker:(id)tracker {
    return nil;
}

%end

//  顶部吊坠，比如LOL观赛福利入口、红包、心愿单
@interface BBLiveVerticalCenterBar : NSObject

@property (retain, nonatomic) UIView *topPendantContainerView;

@end

%hook BBLiveVerticalCenterBar

// 顶部吊坠
- (void)layoutTopPendantContainerView {
    [self.topPendantContainerView removeFromSuperview];
    self.topPendantContainerView = nil;
}

// 弹幕下面的购物推荐卡
- (void)_showShoppingRecommendViewWithInfo:(id)info completion:(id)completion {
}

%end


// 礼物动画
// BBLiveBaseMP4AnimationView
// BBLiveBaseSpineAnimationView
// BBLiveBaseSVGAAnimationView
%hook BBLiveBaseAnimationView

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

%end

// 关注弹窗
%hook BBLiveFollowCardAlertComponent

- (id)initWithDataSource:(id)source {
    return nil;
}

%end

%hook BBLiveFullScreenFloatPanelView

// 修复8.76.0奔溃
- (void)registerComponent:(id)component {
    if (!component) {
        return;
    }
    %orig;
}

%end

// 热门榜、人气榜
%hook LynxView

- (id)initWithCoder:(id)coder {
    return nil;
}

- (id)init {
    return nil;
}

- (id)initWithFrame:(CGRect)frame {
    return nil;
}

- (id)initWithBuilderBlock:(id)block {
    return nil;
}

- (id)initWithoutRender {
    return nil;
}

%end

// 直播详情-弹幕底部的功能卡
%hook BBLChronFunctionCard

- (id)initWithStore:(id)store {
    return nil;
}

- (id)init {
    return nil;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}


