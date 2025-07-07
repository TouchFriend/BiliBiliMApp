#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/rcmd/NJRcmdAd.xm"


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

@class BFCStoreScorePopupManager; 
static void (*_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id, id, id); static void (*_logos_orig$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$)(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST, SEL, unsigned long long, unsigned long long, unsigned long long, unsigned long long, id); static void _logos_method$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST, SEL, unsigned long long, unsigned long long, unsigned long long, unsigned long long, id); 

#line 8 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/rcmd/NJRcmdAd.xm"


static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id need, id close) {
    
}

static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id need, id close) {
    
}

static void _logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id param, id need, id close) {
    
}

static void _logos_method$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$(_LOGOS_SELF_TYPE_NORMAL BFCStoreScorePopupManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long attentionCount, unsigned long long shareCount, unsigned long long likeCount, unsigned long long watchVideoCount, id config) {
    
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BFCStoreScorePopupManager = objc_getClass("BFCStoreScorePopupManager"); Class _logos_metaclass$_ungrouped$BFCStoreScorePopupManager = object_getClass(_logos_class$_ungrouped$BFCStoreScorePopupManager); { MSHookMessageEx(_logos_metaclass$_ungrouped$BFCStoreScorePopupManager, @selector(showWithNeed:close:), (IMP)&_logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$, (IMP*)&_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithNeed$close$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$BFCStoreScorePopupManager, @selector(showFromJSBWithNeed:close:), (IMP)&_logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$, (IMP*)&_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showFromJSBWithNeed$close$);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$BFCStoreScorePopupManager, @selector(showWithParam:need:close:), (IMP)&_logos_meta_method$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$, (IMP*)&_logos_meta_orig$_ungrouped$BFCStoreScorePopupManager$showWithParam$need$close$);}{ MSHookMessageEx(_logos_class$_ungrouped$BFCStoreScorePopupManager, @selector(showWithAttentionCount:shareCount:likeCount:watchVideoCount:popperConfig:), (IMP)&_logos_method$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$, (IMP*)&_logos_orig$_ungrouped$BFCStoreScorePopupManager$showWithAttentionCount$shareCount$likeCount$watchVideoCount$popperConfig$);}} }
#line 29 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/rcmd/NJRcmdAd.xm"
