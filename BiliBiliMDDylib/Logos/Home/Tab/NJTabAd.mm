#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Tab/NJTabAd.xm"


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

@class BAPIAppInterfaceV1DefaultWordsReply; 


#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/Tab/NJTabAd.xm"
static BAPIAppInterfaceV1DefaultWordsReply* (*_logos_orig$App$BAPIAppInterfaceV1DefaultWordsReply$initWithData$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT BAPIAppInterfaceV1DefaultWordsReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BAPIAppInterfaceV1DefaultWordsReply* _logos_method$App$BAPIAppInterfaceV1DefaultWordsReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppInterfaceV1DefaultWordsReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; 


@interface BAPIAppInterfaceV1DefaultWordsReply : NSObject


@property (copy, nonatomic) NSString *show;

@property (copy, nonatomic) NSString *word;

@end



static BAPIAppInterfaceV1DefaultWordsReply* _logos_method$App$BAPIAppInterfaceV1DefaultWordsReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppInterfaceV1DefaultWordsReply* __unused self, SEL __unused _cmd, id data, id registry, id * error) _LOGOS_RETURN_RETAINED {
    BAPIAppInterfaceV1DefaultWordsReply *ret = _logos_orig$App$BAPIAppInterfaceV1DefaultWordsReply$initWithData$extensionRegistry$error$(self, _cmd, data, registry, error);
    ret.show = @"";
    ret.word = @"";
    return ret;
}





static __attribute__((constructor)) void _logosLocalCtor_5c1794ff(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BAPIAppInterfaceV1DefaultWordsReply = objc_getClass("BAPIAppInterfaceV1DefaultWordsReply"); { MSHookMessageEx(_logos_class$App$BAPIAppInterfaceV1DefaultWordsReply, @selector(initWithData:extensionRegistry:error:), (IMP)&_logos_method$App$BAPIAppInterfaceV1DefaultWordsReply$initWithData$extensionRegistry$error$, (IMP*)&_logos_orig$App$BAPIAppInterfaceV1DefaultWordsReply$initWithData$extensionRegistry$error$);}}
    }
}
