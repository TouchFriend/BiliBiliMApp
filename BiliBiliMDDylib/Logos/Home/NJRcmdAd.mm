#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Home/NJRcmdAd.xm"


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

@class AdPGCmInfoModel; @class AdPegasusModel; @class AdPGInfoModel; @class BannerItemModel; 
static id (*_logos_orig$_ungrouped$AdPGInfoModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$AdPGInfoModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$AdPegasusModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$AdPegasusModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$AdPGCmInfoModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$AdPGCmInfoModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$BannerItemModel$init)(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; static id _logos_method$_ungrouped$BannerItemModel$init(_LOGOS_SELF_TYPE_INIT id, SEL) _LOGOS_RETURN_RETAINED; 

#line 7 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Home/NJRcmdAd.xm"


static id _logos_method$_ungrouped$AdPGInfoModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}





static id _logos_method$_ungrouped$AdPegasusModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}





static id _logos_method$_ungrouped$AdPGCmInfoModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}







static id _logos_method$_ungrouped$BannerItemModel$init(_LOGOS_SELF_TYPE_INIT id __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}



static __attribute__((constructor)) void _logosLocalCtor_0f530806(int __unused argc, char __unused **argv, char __unused **envp) {





    {Class _logos_class$_ungrouped$AdPGInfoModel = objc_getClass("BBAdPegasus.AdPGInfoModel"); { MSHookMessageEx(_logos_class$_ungrouped$AdPGInfoModel, @selector(init), (IMP)&_logos_method$_ungrouped$AdPGInfoModel$init, (IMP*)&_logos_orig$_ungrouped$AdPGInfoModel$init);}Class _logos_class$_ungrouped$AdPegasusModel = objc_getClass("BBAdPegasus.AdPegasusModel"); { MSHookMessageEx(_logos_class$_ungrouped$AdPegasusModel, @selector(init), (IMP)&_logos_method$_ungrouped$AdPegasusModel$init, (IMP*)&_logos_orig$_ungrouped$AdPegasusModel$init);}Class _logos_class$_ungrouped$AdPGCmInfoModel = objc_getClass("BBAdPegasus.AdPGCmInfoModel"); { MSHookMessageEx(_logos_class$_ungrouped$AdPGCmInfoModel, @selector(init), (IMP)&_logos_method$_ungrouped$AdPGCmInfoModel$init, (IMP*)&_logos_orig$_ungrouped$AdPGCmInfoModel$init);}Class _logos_class$_ungrouped$BannerItemModel = objc_getClass("BBAdPegasus.BannerItemModel"); { MSHookMessageEx(_logos_class$_ungrouped$BannerItemModel, @selector(init), (IMP)&_logos_method$_ungrouped$BannerItemModel$init, (IMP*)&_logos_orig$_ungrouped$BannerItemModel$init);}}
    
}

