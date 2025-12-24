#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Launch/NJLaunchAd.x"


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

@class BFCSplashManager; @class BFCBrandSplashViewController; 


#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Launch/NJLaunchAd.x"
static id (*_logos_orig$App$BFCSplashManager$showSplashWithStyle$delegate$launchInfo$)(_LOGOS_SELF_TYPE_NORMAL BFCSplashManager* _LOGOS_SELF_CONST, SEL, unsigned long long, id, id); static id _logos_method$App$BFCSplashManager$showSplashWithStyle$delegate$launchInfo$(_LOGOS_SELF_TYPE_NORMAL BFCSplashManager* _LOGOS_SELF_CONST, SEL, unsigned long long, id, id); static void (*_logos_orig$App$BFCBrandSplashViewController$setDuration$)(_LOGOS_SELF_TYPE_NORMAL BFCBrandSplashViewController* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$App$BFCBrandSplashViewController$setDuration$(_LOGOS_SELF_TYPE_NORMAL BFCBrandSplashViewController* _LOGOS_SELF_CONST, SEL, double); 




static id _logos_method$App$BFCSplashManager$showSplashWithStyle$delegate$launchInfo$(_LOGOS_SELF_TYPE_NORMAL BFCSplashManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long style, id delegate, id info) {
    




    
    if (style == 2) {
        return _logos_orig$App$BFCSplashManager$showSplashWithStyle$delegate$launchInfo$(self, _cmd, 1, delegate, info);
    }
    return _logos_orig$App$BFCSplashManager$showSplashWithStyle$delegate$launchInfo$(self, _cmd, style, delegate, info);
}







static void _logos_method$App$BFCBrandSplashViewController$setDuration$(_LOGOS_SELF_TYPE_NORMAL BFCBrandSplashViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double duration) {
    
    _logos_orig$App$BFCBrandSplashViewController$setDuration$(self, _cmd, 0);
}



 


static __attribute__((constructor)) void _logosLocalCtor_60a62657(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BFCSplashManager = objc_getClass("BFCSplashManager"); { MSHookMessageEx(_logos_class$App$BFCSplashManager, @selector(showSplashWithStyle:delegate:launchInfo:), (IMP)&_logos_method$App$BFCSplashManager$showSplashWithStyle$delegate$launchInfo$, (IMP*)&_logos_orig$App$BFCSplashManager$showSplashWithStyle$delegate$launchInfo$);}Class _logos_class$App$BFCBrandSplashViewController = objc_getClass("BFCBrandSplashViewController"); { MSHookMessageEx(_logos_class$App$BFCBrandSplashViewController, @selector(setDuration:), (IMP)&_logos_method$App$BFCBrandSplashViewController$setDuration$, (IMP*)&_logos_orig$App$BFCBrandSplashViewController$setDuration$);}}
    }
}

