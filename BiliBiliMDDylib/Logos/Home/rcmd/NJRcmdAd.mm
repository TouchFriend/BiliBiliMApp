#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Rcmd/NJRcmdAd.xm"


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

@class BFCStoreScorePopupManager; @class BBPhoneTabBarBubbleView; @class BFCPushGuideSheetView; @class BFCRestrictedModeTeenagersAlertView; 


#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Rcmd/NJRcmdAd.xm"
static void (*_logos_meta_orig$App$BFCStoreScorePopupManager$showWithNeed$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void _logos_meta_method$App$BFCStoreScorePopupManager$showWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_meta_orig$App$BFCStoreScorePopupManager$showFromJSBWithNeed$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void _logos_meta_method$App$BFCStoreScorePopupManager$showFromJSBWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_meta_orig$App$BFCStoreScorePopupManager$showWithParam$need$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_meta_method$App$BFCStoreScorePopupManager$showWithParam$need$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$App$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$)(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST, SEL, unsigned long long, unsigned long long, unsigned long long, unsigned long long, id); static void _logos_method$App$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST, SEL, unsigned long long, unsigned long long, unsigned long long, unsigned long long, id); static BFCPushGuideSheetView* (*_logos_orig$App$BFCPushGuideSheetView$initWithModel$delegate$spmid$)(_LOGOS_SELF_TYPE_INIT BFCPushGuideSheetView*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static BFCPushGuideSheetView* _logos_method$App$BFCPushGuideSheetView$initWithModel$delegate$spmid$(_LOGOS_SELF_TYPE_INIT BFCPushGuideSheetView*, SEL, id, id, id) _LOGOS_RETURN_RETAINED; static BBPhoneTabBarBubbleView* (*_logos_orig$App$BBPhoneTabBarBubbleView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BBPhoneTabBarBubbleView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BBPhoneTabBarBubbleView* _logos_method$App$BBPhoneTabBarBubbleView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBPhoneTabBarBubbleView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BOOL (*_logos_meta_orig$App$BFCRestrictedModeTeenagersAlertView$needShowTeenagersAlert)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL _logos_meta_method$App$BFCRestrictedModeTeenagersAlertView$needShowTeenagersAlert(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 




static void _logos_meta_method$App$BFCStoreScorePopupManager$showWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id need, id close) {
    
}

static void _logos_meta_method$App$BFCStoreScorePopupManager$showFromJSBWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id need, id close) {
    
}

static void _logos_meta_method$App$BFCStoreScorePopupManager$showWithParam$need$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id param, id need, id close) {
    
}

static void _logos_method$App$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long attentionCount, unsigned long long shareCount, unsigned long long likeCount, unsigned long long watchVideoCount, id config) {
    
}






static BFCPushGuideSheetView* _logos_method$App$BFCPushGuideSheetView$initWithModel$delegate$spmid$(_LOGOS_SELF_TYPE_INIT BFCPushGuideSheetView* __unused self, SEL __unused _cmd, id model, id delegate, id spmid) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBPhoneTabBarBubbleView* _logos_method$App$BBPhoneTabBarBubbleView$initWithFrame$(_LOGOS_SELF_TYPE_INIT BBPhoneTabBarBubbleView* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}







static BOOL _logos_meta_method$App$BFCRestrictedModeTeenagersAlertView$needShowTeenagersAlert(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}





static __attribute__((constructor)) void _logosLocalCtor_f1ee81aa(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BFCStoreScorePopupManager = objc_getClass("BFCStoreScorePopupManager"); Class _logos_metaclass$App$BFCStoreScorePopupManager = object_getClass(_logos_class$App$BFCStoreScorePopupManager); { MSHookMessageEx(_logos_metaclass$App$BFCStoreScorePopupManager, @selector(showWithNeed:close:), (IMP)&_logos_meta_method$App$BFCStoreScorePopupManager$showWithNeed$close$, (IMP*)&_logos_meta_orig$App$BFCStoreScorePopupManager$showWithNeed$close$);}{ MSHookMessageEx(_logos_metaclass$App$BFCStoreScorePopupManager, @selector(showFromJSBWithNeed:close:), (IMP)&_logos_meta_method$App$BFCStoreScorePopupManager$showFromJSBWithNeed$close$, (IMP*)&_logos_meta_orig$App$BFCStoreScorePopupManager$showFromJSBWithNeed$close$);}{ MSHookMessageEx(_logos_metaclass$App$BFCStoreScorePopupManager, @selector(showWithParam:need:close:), (IMP)&_logos_meta_method$App$BFCStoreScorePopupManager$showWithParam$need$close$, (IMP*)&_logos_meta_orig$App$BFCStoreScorePopupManager$showWithParam$need$close$);}{ MSHookMessageEx(_logos_class$App$BFCStoreScorePopupManager, @selector(showWithAttentionCount:shareCount:likeCount:watchVideoCount:popperConfig:), (IMP)&_logos_method$App$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$, (IMP*)&_logos_orig$App$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$);}Class _logos_class$App$BFCPushGuideSheetView = objc_getClass("BFCPushGuideSheetView"); { MSHookMessageEx(_logos_class$App$BFCPushGuideSheetView, @selector(initWithModel:delegate:spmid:), (IMP)&_logos_method$App$BFCPushGuideSheetView$initWithModel$delegate$spmid$, (IMP*)&_logos_orig$App$BFCPushGuideSheetView$initWithModel$delegate$spmid$);}Class _logos_class$App$BBPhoneTabBarBubbleView = objc_getClass("BBPhoneTabBarBubbleView"); { MSHookMessageEx(_logos_class$App$BBPhoneTabBarBubbleView, @selector(initWithFrame:), (IMP)&_logos_method$App$BBPhoneTabBarBubbleView$initWithFrame$, (IMP*)&_logos_orig$App$BBPhoneTabBarBubbleView$initWithFrame$);}Class _logos_class$App$BFCRestrictedModeTeenagersAlertView = objc_getClass("BFCRestrictedModeTeenagersAlertView"); Class _logos_metaclass$App$BFCRestrictedModeTeenagersAlertView = object_getClass(_logos_class$App$BFCRestrictedModeTeenagersAlertView); { MSHookMessageEx(_logos_metaclass$App$BFCRestrictedModeTeenagersAlertView, @selector(needShowTeenagersAlert), (IMP)&_logos_meta_method$App$BFCRestrictedModeTeenagersAlertView$needShowTeenagersAlert, (IMP*)&_logos_meta_orig$App$BFCRestrictedModeTeenagersAlertView$needShowTeenagersAlert);}}
    }
}

