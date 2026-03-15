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

@class BFCSplashLaunchInfo; 


#line 6 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Launch/NJLaunchAd.x"
static NSString * (*_logos_orig$App$BFCSplashLaunchInfo$description)(_LOGOS_SELF_TYPE_NORMAL BFCSplashLaunchInfo* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BFCSplashLaunchInfo$description(_LOGOS_SELF_TYPE_NORMAL BFCSplashLaunchInfo* _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$App$BFCSplashLaunchInfo$infoWith$linkAwake$inHot$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, _Bool, _Bool, _Bool); static id _logos_meta_method$App$BFCSplashLaunchInfo$infoWith$linkAwake$inHot$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, _Bool, _Bool, _Bool); 

@interface BFCSplashLaunchInfo : NSObject

@property (nonatomic) _Bool launchFlag;
@property (nonatomic) _Bool linkAwake;
@property (nonatomic) _Bool inHot;
@property (readonly, nonatomic) unsigned long long launchType;


+ (id)infoWith:(_Bool)with linkAwake:(_Bool)awake inHot:(_Bool)hot;

@end



static NSString * _logos_method$App$BFCSplashLaunchInfo$description(_LOGOS_SELF_TYPE_NORMAL BFCSplashLaunchInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *orig = _logos_orig$App$BFCSplashLaunchInfo$description(self, _cmd);
    NSString *ret = [orig stringByAppendingFormat:@"launchFlag: %@,linkAwake:%@,inHot:%@,launchType:%@", @(self.launchFlag), @(self.linkAwake), @(self.inHot), @(self.launchType)];
    return ret;
}

static id _logos_meta_method$App$BFCSplashLaunchInfo$infoWith$linkAwake$inHot$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool with, _Bool awake, _Bool hot) {
    return _logos_meta_orig$App$BFCSplashLaunchInfo$infoWith$linkAwake$inHot$(self, _cmd, YES, awake, hot);
}



 


static __attribute__((constructor)) void _logosLocalCtor_d1a00f3d(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BFCSplashLaunchInfo = objc_getClass("BFCSplashLaunchInfo"); Class _logos_metaclass$App$BFCSplashLaunchInfo = object_getClass(_logos_class$App$BFCSplashLaunchInfo); { MSHookMessageEx(_logos_class$App$BFCSplashLaunchInfo, @selector(description), (IMP)&_logos_method$App$BFCSplashLaunchInfo$description, (IMP*)&_logos_orig$App$BFCSplashLaunchInfo$description);}{ MSHookMessageEx(_logos_metaclass$App$BFCSplashLaunchInfo, @selector(infoWith:linkAwake:inHot:), (IMP)&_logos_meta_method$App$BFCSplashLaunchInfo$infoWith$linkAwake$inHot$, (IMP*)&_logos_meta_orig$App$BFCSplashLaunchInfo$infoWith$linkAwake$inHot$);}}
    }
}

