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

@class BBLiveBaseAreaRankEntryView; @class BBLiveBaseAnimationView; @class BBLiveBasePopularHotRankEntryView; @class BBLiveBaseMixedRankEntryView; @class BBLiveVerticalCenterBar; @class BBLiveShoppingExplainCardViewModel; @class BBLiveTopRightEntranceManager; @class BBLiveRevenueCardsContentView; @class BBLiveChainView; @class BBLiveFunctionCardTaskManager; @class BBLiveBaseUserRankListEntryView; @class BBLiveFollowCardAlertComponent; @class BBLiveBaseAppointmentCardView; @class BBLiveBaseAppointmentEntryView; @class BBLiveBasePopularRankEntryView; 
static BBLiveRevenueCardsContentView* (*_logos_orig$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$)(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveRevenueCardsContentView* _logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentEntryView* (*_logos_orig$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentEntryView* _logos_method$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentCardView* (*_logos_orig$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAppointmentCardView* _logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularHotRankEntryView* (*_logos_orig$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularHotRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseUserRankListEntryView* (*_logos_orig$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseUserRankListEntryView* _logos_method$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularRankEntryView* (*_logos_orig$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBasePopularRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAreaRankEntryView* (*_logos_orig$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAreaRankEntryView* _logos_method$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseMixedRankEntryView* (*_logos_orig$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseMixedRankEntryView* _logos_method$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveTopRightEntranceManager* (*_logos_orig$_ungrouped$BBLiveTopRightEntranceManager$init)(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveTopRightEntranceManager* _logos_method$_ungrouped$BBLiveTopRightEntranceManager$init(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveChainView* (*_logos_orig$_ungrouped$BBLiveChainView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveChainView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveChainView* _logos_method$_ungrouped$BBLiveChainView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveChainView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveFunctionCardTaskManager* (*_logos_orig$_ungrouped$BBLiveFunctionCardTaskManager$init)(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveFunctionCardTaskManager* _logos_method$_ungrouped$BBLiveFunctionCardTaskManager$init(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager*, SEL) _LOGOS_RETURN_RETAINED; static BBLiveShoppingExplainCardViewModel* (*_logos_orig$_ungrouped$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$)(_LOGOS_SELF_TYPE_INIT BBLiveShoppingExplainCardViewModel*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBLiveShoppingExplainCardViewModel* _logos_method$_ungrouped$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$(_LOGOS_SELF_TYPE_INIT BBLiveShoppingExplainCardViewModel*, SEL, id, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView)(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST, SEL); static BBLiveBaseAnimationView* (*_logos_orig$_ungrouped$BBLiveBaseAnimationView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBLiveBaseAnimationView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveBaseAnimationView* _logos_method$_ungrouped$BBLiveBaseAnimationView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAnimationView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBLiveFollowCardAlertComponent* (*_logos_orig$_ungrouped$BBLiveFollowCardAlertComponent$initWithDataSource$)(_LOGOS_SELF_TYPE_INIT BBLiveFollowCardAlertComponent*, SEL, id) _LOGOS_RETURN_RETAINED; static BBLiveFollowCardAlertComponent* _logos_method$_ungrouped$BBLiveFollowCardAlertComponent$initWithDataSource$(_LOGOS_SELF_TYPE_INIT BBLiveFollowCardAlertComponent*, SEL, id) _LOGOS_RETURN_RETAINED; 

#line 7 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"


static BBLiveRevenueCardsContentView* _logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$(_LOGOS_SELF_TYPE_INIT BBLiveRevenueCardsContentView* __unused self, SEL __unused _cmd, id source, id model) _LOGOS_RETURN_RETAINED {
    return nil;
}







static BBLiveBaseAppointmentEntryView* _logos_method$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}




@interface BBLiveBaseAppointmentCardView : NSObject

@end



static BBLiveBaseAppointmentCardView* _logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAppointmentCardView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveBasePopularHotRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularHotRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBaseUserRankListEntryView* _logos_method$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseUserRankListEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBasePopularRankEntryView* _logos_method$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBasePopularRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveBaseAreaRankEntryView* _logos_method$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAreaRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static BBLiveBaseMixedRankEntryView* _logos_method$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseMixedRankEntryView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveTopRightEntranceManager* _logos_method$_ungrouped$BBLiveTopRightEntranceManager$init(_LOGOS_SELF_TYPE_INIT BBLiveTopRightEntranceManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveChainView* _logos_method$_ungrouped$BBLiveChainView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveChainView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}







static BBLiveFunctionCardTaskManager* _logos_method$_ungrouped$BBLiveFunctionCardTaskManager$init(_LOGOS_SELF_TYPE_INIT BBLiveFunctionCardTaskManager* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveShoppingExplainCardViewModel* _logos_method$_ungrouped$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$(_LOGOS_SELF_TYPE_INIT BBLiveShoppingExplainCardViewModel* __unused self, SEL __unused _cmd, id source, id tracker) _LOGOS_RETURN_RETAINED {
    return nil;
}




@interface BBLiveVerticalCenterBar : NSObject

@property (retain, nonatomic) UIView *topPendantContainerView;

@end



static void _logos_method$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView(_LOGOS_SELF_TYPE_NORMAL BBLiveVerticalCenterBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    [self.topPendantContainerView removeFromSuperview];
    self.topPendantContainerView = nil;
}










static BBLiveBaseAnimationView* _logos_method$_ungrouped$BBLiveBaseAnimationView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBLiveBaseAnimationView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBLiveFollowCardAlertComponent* _logos_method$_ungrouped$BBLiveFollowCardAlertComponent$initWithDataSource$(_LOGOS_SELF_TYPE_INIT BBLiveFollowCardAlertComponent* __unused self, SEL __unused _cmd, id source) _LOGOS_RETURN_RETAINED {
    return nil;
}





static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBLiveRevenueCardsContentView = objc_getClass("BBLiveRevenueCardsContentView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveRevenueCardsContentView, @selector(initWithDataSource:viewModel:), (IMP)&_logos_method$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$, (IMP*)&_logos_orig$_ungrouped$BBLiveRevenueCardsContentView$initWithDataSource$viewModel$);}Class _logos_class$_ungrouped$BBLiveBaseAppointmentEntryView = objc_getClass("BBLiveBaseAppointmentEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAppointmentEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAppointmentEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseAppointmentCardView = objc_getClass("BBLiveBaseAppointmentCardView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAppointmentCardView, @selector(initWithEntryFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAppointmentCardView$initWithEntryFrame$);}Class _logos_class$_ungrouped$BBLiveBasePopularHotRankEntryView = objc_getClass("BBLiveBasePopularHotRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBasePopularHotRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBasePopularHotRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseUserRankListEntryView = objc_getClass("BBLiveBaseUserRankListEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseUserRankListEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseUserRankListEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBasePopularRankEntryView = objc_getClass("BBLiveBasePopularRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBasePopularRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBasePopularRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseAreaRankEntryView = objc_getClass("BBLiveBaseAreaRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAreaRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAreaRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveBaseMixedRankEntryView = objc_getClass("BBLiveBaseMixedRankEntryView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseMixedRankEntryView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseMixedRankEntryView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveTopRightEntranceManager = objc_getClass("BBLiveTopRightEntranceManager"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveTopRightEntranceManager, @selector(init), (IMP)&_logos_method$_ungrouped$BBLiveTopRightEntranceManager$init, (IMP*)&_logos_orig$_ungrouped$BBLiveTopRightEntranceManager$init);}Class _logos_class$_ungrouped$BBLiveChainView = objc_getClass("BBLiveChainView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveChainView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveChainView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveChainView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveFunctionCardTaskManager = objc_getClass("BBLiveFunctionCardTaskManager"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveFunctionCardTaskManager, @selector(init), (IMP)&_logos_method$_ungrouped$BBLiveFunctionCardTaskManager$init, (IMP*)&_logos_orig$_ungrouped$BBLiveFunctionCardTaskManager$init);}Class _logos_class$_ungrouped$BBLiveShoppingExplainCardViewModel = objc_getClass("BBLiveShoppingExplainCardViewModel"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveShoppingExplainCardViewModel, @selector(initWithDataSource:tracker:), (IMP)&_logos_method$_ungrouped$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$, (IMP*)&_logos_orig$_ungrouped$BBLiveShoppingExplainCardViewModel$initWithDataSource$tracker$);}Class _logos_class$_ungrouped$BBLiveVerticalCenterBar = objc_getClass("BBLiveVerticalCenterBar"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveVerticalCenterBar, @selector(layoutTopPendantContainerView), (IMP)&_logos_method$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView, (IMP*)&_logos_orig$_ungrouped$BBLiveVerticalCenterBar$layoutTopPendantContainerView);}Class _logos_class$_ungrouped$BBLiveBaseAnimationView = objc_getClass("BBLiveBaseAnimationView"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveBaseAnimationView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BBLiveBaseAnimationView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BBLiveBaseAnimationView$initWithFrame$);}Class _logos_class$_ungrouped$BBLiveFollowCardAlertComponent = objc_getClass("BBLiveFollowCardAlertComponent"); { MSHookMessageEx(_logos_class$_ungrouped$BBLiveFollowCardAlertComponent, @selector(initWithDataSource:), (IMP)&_logos_method$_ungrouped$BBLiveFollowCardAlertComponent$initWithDataSource$, (IMP*)&_logos_orig$_ungrouped$BBLiveFollowCardAlertComponent$initWithDataSource$);}} }
#line 157 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Live/NJLiveDetailAd.xm"
