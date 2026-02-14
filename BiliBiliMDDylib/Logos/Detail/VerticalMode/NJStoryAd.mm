#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Detail/VerticalMode/NJStoryAd.xm"


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

@class BAPIAppStoryV1BottomDiversionEntranceReply; 


#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Detail/VerticalMode/NJStoryAd.xm"
static BAPIAppStoryV1BottomDiversionEntranceReply* (*_logos_orig$App$BAPIAppStoryV1BottomDiversionEntranceReply$initWithData$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT BAPIAppStoryV1BottomDiversionEntranceReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BAPIAppStoryV1BottomDiversionEntranceReply* _logos_method$App$BAPIAppStoryV1BottomDiversionEntranceReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppStoryV1BottomDiversionEntranceReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; 


@interface BAPIAppStoryV1BottomDiversionEntranceReply : NSObject

@property (retain, nonatomic) NSMutableArray *diversionEntranceListArray;

@end



static BAPIAppStoryV1BottomDiversionEntranceReply* _logos_method$App$BAPIAppStoryV1BottomDiversionEntranceReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppStoryV1BottomDiversionEntranceReply* __unused self, SEL __unused _cmd, id data, id registry, id * error) _LOGOS_RETURN_RETAINED {
    BAPIAppStoryV1BottomDiversionEntranceReply *ret = _logos_orig$App$BAPIAppStoryV1BottomDiversionEntranceReply$initWithData$extensionRegistry$error$(self, _cmd, data, registry, error);
    [ret.diversionEntranceListArray removeAllObjects];
    return ret;
}





static __attribute__((constructor)) void _logosLocalCtor_4028b031(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BAPIAppStoryV1BottomDiversionEntranceReply = objc_getClass("BAPIAppStoryV1BottomDiversionEntranceReply"); { MSHookMessageEx(_logos_class$App$BAPIAppStoryV1BottomDiversionEntranceReply, @selector(initWithData:extensionRegistry:error:), (IMP)&_logos_method$App$BAPIAppStoryV1BottomDiversionEntranceReply$initWithData$extensionRegistry$error$, (IMP*)&_logos_orig$App$BAPIAppStoryV1BottomDiversionEntranceReply$initWithData$extensionRegistry$error$);}}
    }
}
