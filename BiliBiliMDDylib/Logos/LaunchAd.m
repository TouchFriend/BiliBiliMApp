#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/LaunchAd.x"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface BFCSplashWindow : UIWindow

@end



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
static BFCSplashWindow* (*_logos_orig$_ungrouped$BFCSplashWindow$initWithFrame$)(_LOGOS_SELF_TYPE_INIT BFCSplashWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static BFCSplashWindow* _logos_method$_ungrouped$BFCSplashWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT BFCSplashWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 11 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/LaunchAd.x"


static BFCSplashWindow* _logos_method$_ungrouped$BFCSplashWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT BFCSplashWindow* __unused self, SEL __unused _cmd, CGRect frame) _LOGOS_RETURN_RETAINED {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__);
    return nil;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BFCSplashWindow = objc_getClass("BFCSplashWindow"); { MSHookMessageEx(_logos_class$_ungrouped$BFCSplashWindow, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$BFCSplashWindow$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$BFCSplashWindow$initWithFrame$);}} }
#line 19 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/LaunchAd.x"
