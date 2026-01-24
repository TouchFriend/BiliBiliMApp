#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Tool/NJDebug.xm"









#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface GPBMessage : NSObject

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

@class GPBMessage; 
static GPBMessage* (*_logos_orig$_ungrouped$GPBMessage$init)(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL) _LOGOS_RETURN_RETAINED; static GPBMessage* _logos_method$_ungrouped$GPBMessage$init(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL) _LOGOS_RETURN_RETAINED; static GPBMessage* (*_logos_orig$_ungrouped$GPBMessage$initWithData$error$)(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL, id, id *) _LOGOS_RETURN_RETAINED; static GPBMessage* _logos_method$_ungrouped$GPBMessage$initWithData$error$(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL, id, id *) _LOGOS_RETURN_RETAINED; static GPBMessage* (*_logos_orig$_ungrouped$GPBMessage$initWithData$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static GPBMessage* _logos_method$_ungrouped$GPBMessage$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static GPBMessage* (*_logos_orig$_ungrouped$GPBMessage$initWithCodedInputStream$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static GPBMessage* _logos_method$_ungrouped$GPBMessage$initWithCodedInputStream$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT GPBMessage*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; 

#line 17 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Tool/NJDebug.xm"


static GPBMessage* _logos_method$_ungrouped$GPBMessage$init(_LOGOS_SELF_TYPE_INIT GPBMessage* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    id ret = _logos_orig$_ungrouped$GPBMessage$init(self, _cmd);
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__, ret);
    return ret;
}

static GPBMessage* _logos_method$_ungrouped$GPBMessage$initWithData$error$(_LOGOS_SELF_TYPE_INIT GPBMessage* __unused self, SEL __unused _cmd, id data, id * error) _LOGOS_RETURN_RETAINED {
    id ret = _logos_orig$_ungrouped$GPBMessage$initWithData$error$(self, _cmd, data, error);
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__, ret);
    return ret;
}

static GPBMessage* _logos_method$_ungrouped$GPBMessage$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT GPBMessage* __unused self, SEL __unused _cmd, id data, id registry, id * error) _LOGOS_RETURN_RETAINED {
    id ret = _logos_orig$_ungrouped$GPBMessage$initWithData$extensionRegistry$error$(self, _cmd, data, registry, error);
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__, ret);
    return ret;
}

static GPBMessage* _logos_method$_ungrouped$GPBMessage$initWithCodedInputStream$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT GPBMessage* __unused self, SEL __unused _cmd, id stream, id registry, id * error) _LOGOS_RETURN_RETAINED {
    id ret = _logos_orig$_ungrouped$GPBMessage$initWithCodedInputStream$extensionRegistry$error$(self, _cmd, stream, registry, error);
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__, ret);
    return ret;
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$GPBMessage = objc_getClass("GPBMessage"); { MSHookMessageEx(_logos_class$_ungrouped$GPBMessage, @selector(init), (IMP)&_logos_method$_ungrouped$GPBMessage$init, (IMP*)&_logos_orig$_ungrouped$GPBMessage$init);}{ MSHookMessageEx(_logos_class$_ungrouped$GPBMessage, @selector(initWithData:error:), (IMP)&_logos_method$_ungrouped$GPBMessage$initWithData$error$, (IMP*)&_logos_orig$_ungrouped$GPBMessage$initWithData$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$GPBMessage, @selector(initWithData:extensionRegistry:error:), (IMP)&_logos_method$_ungrouped$GPBMessage$initWithData$extensionRegistry$error$, (IMP*)&_logos_orig$_ungrouped$GPBMessage$initWithData$extensionRegistry$error$);}{ MSHookMessageEx(_logos_class$_ungrouped$GPBMessage, @selector(initWithCodedInputStream:extensionRegistry:error:), (IMP)&_logos_method$_ungrouped$GPBMessage$initWithCodedInputStream$extensionRegistry$error$, (IMP*)&_logos_orig$_ungrouped$GPBMessage$initWithCodedInputStream$extensionRegistry$error$);}} }
#line 46 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Tool/NJDebug.xm"
