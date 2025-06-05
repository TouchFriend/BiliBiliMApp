#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMD/BiliBiliMDDylib/Logos/DetailAd.xm"


#import <UIKit/UIKit.h>

@interface BBAdUGCContext : NSObject

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

@class BBAdUGCContext; @class BBAdUGCRcmdModel; 
static BBAdUGCContext* (*_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$)(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* (*_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithModel$)(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* (*_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$)(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; 

#line 10 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMD/BiliBiliMDDylib/Logos/DetailAd.xm"


static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext* __unused self, SEL __unused _cmd, id resovler) _LOGOS_RETURN_RETAINED {
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}






static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel* __unused self, SEL __unused _cmd, id model) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCRcmdModel: %p> initWithModel:%@]: %@", self, model, ((NSString *)@"cxzcxz"));
    return nil;
}

static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel* __unused self, SEL __unused _cmd, id any) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCRcmdModel: %p> initWithSourceContentAny:%@]: %@", self, any, ((NSString *)@"cxzcxz"));
    return nil;
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBAdUGCContext = objc_getClass("BBAdUGCContext"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCContext, @selector(initWithResovler:), (IMP)&_logos_method$_ungrouped$BBAdUGCContext$initWithResovler$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$);}Class _logos_class$_ungrouped$BBAdUGCRcmdModel = objc_getClass("BBAdUGCRcmdModel"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCRcmdModel, @selector(initWithModel:), (IMP)&_logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithModel$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCRcmdModel, @selector(initWithSourceContentAny:), (IMP)&_logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$);}} }
#line 34 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMD/BiliBiliMDDylib/Logos/DetailAd.xm"
