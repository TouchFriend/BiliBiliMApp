#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BBLiveBaseAppointmentEntryView; @class BBLiveRevenueCardsContentView; @class LynxView; @class BBLiveBaseUserRankListEntryView; @class BBLiveBaseAreaRankEntryView; @class BBLiveFollowCardAlertComponent; @class BBLiveTopRightEntranceManager; @class BBLiveBaseMixedRankEntryView; @class BBLiveFullScreenFloatPanelView; @class BBLiveVerticalCenterBar; @class BBLiveBasePopularRankEntryView; @class BBLiveBasePopularHotRankEntryView; @class BBLiveFunctionCardTaskManager; @class BBLiveVerticalPanelViewController; @class BBLiveChainView; @class BBLiveBaseAnimationView; @class BBLiveShoppingExplainCardViewModel; @class BBLiveBaseAppointmentCardView; 


#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"
static BBLiveRevenueCardsContentView* (*_logos_orig$App$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$)(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveRevenueCardsContentView* _logos_method$App$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentEntryView* (*_logos_orig$App$BBLiveBaseAppointmentEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentEntryView* _logos_method$App$BBLiveBaseAppointmentEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentCardView* (*_logos_orig$App$BBLiveBaseAppointmentCardView$initWithEntryFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentCardView* _logos_method$App$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularHotRankEntryView* (*_logos_orig$App$BBLiveBasePopularHotRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularHotRankEntryView* _logos_method$App$BBLiveBasePopularHotRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseUserRankListEntryView* (*_logos_orig$App$BBLiveBaseUserRankListEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseUserRankListEntryView* _logos_method$App$BBLiveBaseUserRankListEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularRankEntryView* (*_logos_orig$App$BBLiveBasePopularRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularRankEntryView* _logos_method$App$BBLiveBasePopularRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$App$BBLiveVerticalPanelViewController$popularRankEntryViews)(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalPanelViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$App$BBLiveVerticalPanelViewController$popularRankEntryViews(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalPanelViewController* _LOGOS_SELF_CONST, SEL); static BBLiveBaseAreaRankEntryView* (*_logos_orig$App$BBLiveBaseAreaRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAreaRankEntryView* _logos_method$App$BBLiveBaseAreaRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseMixedRankEntryView* (*_logos_orig$App$BBLiveBaseMixedRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseMixedRankEntryView* _logos_method$App$BBLiveBaseMixedRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveTopRightEntranceManager* (*_logos_orig$App$BBLiveTopRightEntranceManager$init)(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveTopRightEntranceManager* _logos_method$App$BBLiveTopRightEntranceManager$init(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveChainView* (*_logos_orig$App$BBLiveChainView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveChainView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveChainView* _logos_method$App$BBLiveChainView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveChainView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveFunctionCardTaskManager* (*_logos_orig$App$BBLiveFunctionCardTaskManager$init)(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveFunctionCardTaskManager* _logos_method$App$BBLiveFunctionCardTaskManager$init(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveShoppingExplainCardViewModel* (*_logos_orig$App$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$)(_LOGOS_SELF_TYPE_INIT BBLiveShoppingExplainCardViewModel*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveShoppingExplainCardViewModel* _logos_method$App$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$(_LOGOS_SELF_TYPE_INIT BBLiveShoppingExplainCardViewModel*, SEL, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$App$BBLiveVerticalCenterBar$layoutTopPendantContainerView)(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBLiveVerticalCenterBar$layoutTopPendantContainerView(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$BBLiveVerticalCenterBar$_showShoppingRecommendViewWithInfo$completion$)(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$App$BBLiveVerticalCenterBar$_showShoppingRecommendViewWithInfo$completion$(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL, id, id); static BBLiveBaseAnimationView* (*_logos_orig$App$BBLiveBaseAnimationView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAnimationView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAnimationView* _logos_method$App$BBLiveBaseAnimationView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAnimationView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveFollowCardAlertComponent* (*_logos_orig$App$BBLiveFollowCardAlertComponent$initWithDataSource$)(_LOGOS_SELF_TYPE_INIT BBLiveFollowCardAlertComponent*, SEL, id) _LOGOS_RETURN_RETAINED; static BBLiveFollowCardAlertComponent* _logos_method$App$BBLiveFollowCardAlertComponent$initWithDataSource$(_LOGOS_SELF_TYPE_INIT BBLiveFollowCardAlertComponent*, SEL, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$App$BBLiveFullScreenFloatPanelView$registerComponent$)(_LOGOS_SELF_TYPE_NORMAL BBLiveFullScreenFloatPanelView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$App$BBLiveFullScreenFloatPanelView$registerComponent$(_LOGOS_SELF_TYPE_NORMAL BBLiveFullScreenFloatPanelView* _LOGOS_SELF_CONST, SEL, id); static LynxView* (*_logos_orig$App$LynxView$initWithCoder$)(_LOGOS_SELF_TYPE_INIT LynxView*, SEL, id) _LOGOS_RETURN_RETAINED; static LynxView* _logos_method$App$LynxView$initWithCoder$(_LOGOS_SELF_TYPE_INIT LynxView*, SEL, id) _LOGOS_RETURN_RETAINED; static LynxView* (*_logos_orig$App$LynxView$init)(_LOGOS_SELF_TYPE_INIT LynxView*, SEL) _LOGOS_RETURN_RETAINED; static LynxView* _logos_method$App$LynxView$init(_LOGOS_SELF_TYPE_INIT LynxView*, SEL) _LOGOS_RETURN_RETAINED; static LynxView* (*_logos_orig$App$LynxView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT LynxView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static LynxView* _logos_method$App$LynxView$initWithFrame$(_LOGOS_SELF_TYPE_INIT LynxView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static LynxView* (*_logos_orig$App$LynxView$initWithBuilderBlock$)(_LOGOS_SELF_TYPE_INIT LynxView*, SEL, id) _LOGOS_RETURN_RETAINED; static LynxView* _logos_method$App$LynxView$initWithBuilderBlock$(_LOGOS_SELF_TYPE_INIT LynxView*, SEL, id) _LOGOS_RETURN_RETAINED; static LynxView* (*_logos_orig$App$LynxView$initWithoutRender)(_LOGOS_SELF_TYPE_INIT LynxView*, SEL) _LOGOS_RETURN_RETAINED; static LynxView* _logos_method$App$LynxView$initWithoutRender(_LOGOS_SELF_TYPE_INIT LynxView*, SEL) _LOGOS_RETURN_RETAINED; 




static BBLiveRevenueCardsContentView* _logos_method$App$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView* __unused self, SEL __unused _cmd, id source, id model) _LOGOS_RETURN_RETAINED {
    return nil;
}







static BBLiveBaseAppointmentEntryView* _logos_method$App$BBLiveBaseAppointmentEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}




@interface BBLiveBaseAppointmentCardView : NSObject

@end



static BBLiveBaseAppointmentCardView* _logos_method$App$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveBasePopularHotRankEntryView* _logos_method$App$BBLiveBasePopularHotRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBaseUserRankListEntryView* _logos_method$App$BBLiveBaseUserRankListEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveBasePopularRankEntryView* _logos_method$App$BBLiveBasePopularRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static id _logos_method$App$BBLiveVerticalPanelViewController$popularRankEntryViews(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalPanelViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return nil;
}






static BBLiveBaseAreaRankEntryView* _logos_method$App$BBLiveBaseAreaRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBaseMixedRankEntryView* _logos_method$App$BBLiveBaseMixedRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveTopRightEntranceManager* _logos_method$App$BBLiveTopRightEntranceManager$init(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveChainView* _logos_method$App$BBLiveChainView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveChainView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}







static BBLiveFunctionCardTaskManager* _logos_method$App$BBLiveFunctionCardTaskManager$init(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveShoppingExplainCardViewModel* _logos_method$App$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$(_LOGOS_SELF_TYPE_INIT BBLiveShoppingExplainCardViewModel* __unused self, SEL __unused _cmd, id source, id tracker) _LOGOS_RETURN_RETAINED {
    return nil;
}




@interface BBLiveVerticalCenterBar : NSObject

@property (retain, nonatomic) UIView *topPendantContainerView;

@end




static void _logos_method$App$BBLiveVerticalCenterBar$layoutTopPendantContainerView(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    [self.topPendantContainerView removeFromSuperview];
    self.topPendantContainerView = nil;
}


static void _logos_method$App$BBLiveVerticalCenterBar$_showShoppingRecommendViewWithInfo$completion$(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id info, id completion) {
}










static BBLiveBaseAnimationView* _logos_method$App$BBLiveBaseAnimationView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAnimationView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveFollowCardAlertComponent* _logos_method$App$BBLiveFollowCardAlertComponent$initWithDataSource$(_LOGOS_SELF_TYPE_INIT BBLiveFollowCardAlertComponent* __unused self, SEL __unused _cmd, id source) _LOGOS_RETURN_RETAINED {
    return nil;
}






static void _logos_method$App$BBLiveFullScreenFloatPanelView$registerComponent$(_LOGOS_SELF_TYPE_NORMAL BBLiveFullScreenFloatPanelView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id component) {
    if (!component) {
        return;
    }
    _logos_orig$App$BBLiveFullScreenFloatPanelView$registerComponent$(self, _cmd, component);
}






static LynxView* _logos_method$App$LynxView$initWithCoder$(_LOGOS_SELF_TYPE_INIT LynxView* __unused self, SEL __unused _cmd, id coder) _LOGOS_RETURN_RETAINED {
    return nil;
}

static LynxView* _logos_method$App$LynxView$init(_LOGOS_SELF_TYPE_INIT LynxView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}

static LynxView* _logos_method$App$LynxView$initWithFrame$(_LOGOS_SELF_TYPE_INIT LynxView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}

static LynxView* _logos_method$App$LynxView$initWithBuilderBlock$(_LOGOS_SELF_TYPE_INIT LynxView* __unused self, SEL __unused _cmd, id block) _LOGOS_RETURN_RETAINED {
    return nil;
}

static LynxView* _logos_method$App$LynxView$initWithoutRender(_LOGOS_SELF_TYPE_INIT LynxView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}






static __attribute__((constructor)) void _logosLocalCtor_fee76c83(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BBLiveRevenueCardsContentView = objc_getClass("BBLiveRevenueCardsContentView"); { MSHookMessageEx(_logos_class$App$BBLiveRevenueCardsContentView, @selector(initWithDataSource:viewModel:), (IMP)&_logos_method$App$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$, (IMP*)&_logos_orig$App$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$);}Class _logos_class$App$BBLiveBaseAppointmentEntryView = objc_getClass("BBLiveBaseAppointmentEntryView"); { MSHookMessageEx(_logos_class$App$BBLiveBaseAppointmentEntryView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveBaseAppointmentEntryView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveBaseAppointmentEntryView$initWithFrame$);}Class _logos_class$App$BBLiveBaseAppointmentCardView = objc_getClass("BBLiveBaseAppointmentCardView"); { MSHookMessageEx(_logos_class$App$BBLiveBaseAppointmentCardView, @selector(initWithEntryFrame:), (IMP)&_logos_method$App$BBLiveBaseAppointmentCardView$initWithEntryFrame$, (IMP*)&_logos_orig$App$BBLiveBaseAppointmentCardView$initWithEntryFrame$);}Class _logos_class$App$BBLiveBasePopularHotRankEntryView = objc_getClass("BBLiveBasePopularHotRankEntryView"); { MSHookMessageEx(_logos_class$App$BBLiveBasePopularHotRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveBasePopularHotRankEntryView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveBasePopularHotRankEntryView$initWithFrame$);}Class _logos_class$App$BBLiveBaseUserRankListEntryView = objc_getClass("BBLiveBaseUserRankListEntryView"); { MSHookMessageEx(_logos_class$App$BBLiveBaseUserRankListEntryView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveBaseUserRankListEntryView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveBaseUserRankListEntryView$initWithFrame$);}Class _logos_class$App$BBLiveBasePopularRankEntryView = objc_getClass("BBLiveBasePopularRankEntryView"); { MSHookMessageEx(_logos_class$App$BBLiveBasePopularRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveBasePopularRankEntryView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveBasePopularRankEntryView$initWithFrame$);}Class _logos_class$App$BBLiveVerticalPanelViewController = objc_getClass("BBLiveVerticalPanelViewController"); { MSHookMessageEx(_logos_class$App$BBLiveVerticalPanelViewController, @selector(popularRankEntryViews), (IMP)&_logos_method$App$BBLiveVerticalPanelViewController$popularRankEntryViews, (IMP*)&_logos_orig$App$BBLiveVerticalPanelViewController$popularRankEntryViews);}Class _logos_class$App$BBLiveBaseAreaRankEntryView = objc_getClass("BBLiveBaseAreaRankEntryView"); { MSHookMessageEx(_logos_class$App$BBLiveBaseAreaRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveBaseAreaRankEntryView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveBaseAreaRankEntryView$initWithFrame$);}Class _logos_class$App$BBLiveBaseMixedRankEntryView = objc_getClass("BBLiveBaseMixedRankEntryView"); { MSHookMessageEx(_logos_class$App$BBLiveBaseMixedRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveBaseMixedRankEntryView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveBaseMixedRankEntryView$initWithFrame$);}Class _logos_class$App$BBLiveTopRightEntranceManager = objc_getClass("BBLiveTopRightEntranceManager"); { MSHookMessageEx(_logos_class$App$BBLiveTopRightEntranceManager, @selector(init), (IMP)&_logos_method$App$BBLiveTopRightEntranceManager$init, (IMP*)&_logos_orig$App$BBLiveTopRightEntranceManager$init);}Class _logos_class$App$BBLiveChainView = objc_getClass("BBLiveChainView"); { MSHookMessageEx(_logos_class$App$BBLiveChainView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveChainView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveChainView$initWithFrame$);}Class _logos_class$App$BBLiveFunctionCardTaskManager = objc_getClass("BBLiveFunctionCardTaskManager"); { MSHookMessageEx(_logos_class$App$BBLiveFunctionCardTaskManager, @selector(init), (IMP)&_logos_method$App$BBLiveFunctionCardTaskManager$init, (IMP*)&_logos_orig$App$BBLiveFunctionCardTaskManager$init);}Class _logos_class$App$BBLiveShoppingExplainCardViewModel = objc_getClass("BBLiveShoppingExplainCardViewModel"); { MSHookMessageEx(_logos_class$App$BBLiveShoppingExplainCardViewModel, @selector(initWithDataSource:tracker:), (IMP)&_logos_method$App$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$, (IMP*)&_logos_orig$App$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$);}Class _logos_class$App$BBLiveVerticalCenterBar = objc_getClass("BBLiveVerticalCenterBar"); { MSHookMessageEx(_logos_class$App$BBLiveVerticalCenterBar, @selector(layoutTopPendantContainerView), (IMP)&_logos_method$App$BBLiveVerticalCenterBar$layoutTopPendantContainerView, (IMP*)&_logos_orig$App$BBLiveVerticalCenterBar$layoutTopPendantContainerView);}{ MSHookMessageEx(_logos_class$App$BBLiveVerticalCenterBar, @selector(_showShoppingRecommendViewWithInfo:completion:), (IMP)&_logos_method$App$BBLiveVerticalCenterBar$_showShoppingRecommendViewWithInfo$completion$, (IMP*)&_logos_orig$App$BBLiveVerticalCenterBar$_showShoppingRecommendViewWithInfo$completion$);}Class _logos_class$App$BBLiveBaseAnimationView = objc_getClass("BBLiveBaseAnimationView"); { MSHookMessageEx(_logos_class$App$BBLiveBaseAnimationView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBLiveBaseAnimationView$initWithFrame$, (IMP*)&_logos_orig$App$BBLiveBaseAnimationView$initWithFrame$);}Class _logos_class$App$BBLiveFollowCardAlertComponent = objc_getClass("BBLiveFollowCardAlertComponent"); { MSHookMessageEx(_logos_class$App$BBLiveFollowCardAlertComponent, @selector(initWithDataSource:), (IMP)&_logos_method$App$BBLiveFollowCardAlertComponent$initWithDataSource$, (IMP*)&_logos_orig$App$BBLiveFollowCardAlertComponent$initWithDataSource$);}Class _logos_class$App$BBLiveFullScreenFloatPanelView = objc_getClass("BBLiveFullScreenFloatPanelView"); { MSHookMessageEx(_logos_class$App$BBLiveFullScreenFloatPanelView, @selector(registerComponent:), (IMP)&_logos_method$App$BBLiveFullScreenFloatPanelView$registerComponent$, (IMP*)&_logos_orig$App$BBLiveFullScreenFloatPanelView$registerComponent$);}Class _logos_class$App$LynxView = objc_getClass("LynxView"); { MSHookMessageEx(_logos_class$App$LynxView, @selector(initWithCoder:), (IMP)&_logos_method$App$LynxView$initWithCoder$, (IMP*)&_logos_orig$App$LynxView$initWithCoder$);}{ MSHookMessageEx(_logos_class$App$LynxView, @selector(init), (IMP)&_logos_method$App$LynxView$init, (IMP*)&_logos_orig$App$LynxView$init);}{ MSHookMessageEx(_logos_class$App$LynxView, @selector(initWithFrame:), (IMP)&_logos_method$App$LynxView$initWithFrame$, (IMP*)&_logos_orig$App$LynxView$initWithFrame$);}{ MSHookMessageEx(_logos_class$App$LynxView, @selector(initWithBuilderBlock:), (IMP)&_logos_method$App$LynxView$initWithBuilderBlock$, (IMP*)&_logos_orig$App$LynxView$initWithBuilderBlock$);}{ MSHookMessageEx(_logos_class$App$LynxView, @selector(initWithoutRender), (IMP)&_logos_method$App$LynxView$initWithoutRender, (IMP*)&_logos_orig$App$LynxView$initWithoutRender);}}
    }
}


