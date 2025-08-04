#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Launch/NJLaunchAd.x"


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

@class BFCSplashWindow; 


#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Launch/NJLaunchAd.x"
static BFCSplashWindow* (*_logos_orig$App$BFCSplashWindow$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BFCSplashWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BFCSplashWindow* _logos_method$App$BFCSplashWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT BFCSplashWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

@interface BFCSplashWindow : UIWindow

@end




static BFCSplashWindow* _logos_method$App$BFCSplashWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT BFCSplashWindow* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    return nil;
}





static __attribute__((constructor)) void _logosLocalCtor_0c3e1959(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BFCSplashWindow = objc_getClass("BFCSplashWindow"); { MSHookMessageEx(_logos_class$App$BFCSplashWindow, @selector(initWithFrame:), (IMP)&_logos_method$App$BFCSplashWindow$initWithFrame$, (IMP*)&_logos_orig$App$BFCSplashWindow$initWithFrame$);}}
    }
}
