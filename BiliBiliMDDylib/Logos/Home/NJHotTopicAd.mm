#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/NJHotTopicAd.xm"


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

@class BBHotTopicSmallCoverV5Model; @class BBHotTopicTopicListModel; @class BBHotTopicSmallCoverAdModel; @class BBHotTopicRcmdOneItemModel; 
static BBHotTopicTopicListModel* (*_logos_orig$_ungrouped$BBHotTopicTopicListModel$initWithGPBMessage$)(_LOGOS_SELF_TYPE_INIT BBHotTopicTopicListModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBHotTopicTopicListModel* _logos_method$_ungrouped$BBHotTopicTopicListModel$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicTopicListModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBHotTopicRcmdOneItemModel* (*_logos_orig$_ungrouped$BBHotTopicRcmdOneItemModel$initWithGPBMessage$)(_LOGOS_SELF_TYPE_INIT BBHotTopicRcmdOneItemModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBHotTopicRcmdOneItemModel* _logos_method$_ungrouped$BBHotTopicRcmdOneItemModel$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicRcmdOneItemModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBHotTopicSmallCoverV5Model* (*_logos_orig$_ungrouped$BBHotTopicSmallCoverV5Model$initWithGPBMessage$)(_LOGOS_SELF_TYPE_INIT BBHotTopicSmallCoverV5Model*, SEL, id) _LOGOS_RETURN_RETAINED; static BBHotTopicSmallCoverV5Model* _logos_method$_ungrouped$BBHotTopicSmallCoverV5Model$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicSmallCoverV5Model*, SEL, id) _LOGOS_RETURN_RETAINED; static BBHotTopicSmallCoverAdModel* (*_logos_orig$_ungrouped$BBHotTopicSmallCoverAdModel$initWithGPBMessage$)(_LOGOS_SELF_TYPE_INIT BBHotTopicSmallCoverAdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBHotTopicSmallCoverAdModel* _logos_method$_ungrouped$BBHotTopicSmallCoverAdModel$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicSmallCoverAdModel*, SEL, id) _LOGOS_RETURN_RETAINED; 

#line 7 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/NJHotTopicAd.xm"


static BBHotTopicTopicListModel* _logos_method$_ungrouped$BBHotTopicTopicListModel$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicTopicListModel* __unused self, SEL __unused _cmd, id gpbmessage) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBHotTopicRcmdOneItemModel* _logos_method$_ungrouped$BBHotTopicRcmdOneItemModel$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicRcmdOneItemModel* __unused self, SEL __unused _cmd, id gpbmessage) _LOGOS_RETURN_RETAINED {
    return nil;
}



@interface BBHotTopicSmallCoverV5Model : NSObject

- (id)smallCoverV5;
- (id)base;
- (NSString *)fromType;

@end




static BBHotTopicSmallCoverV5Model* _logos_method$_ungrouped$BBHotTopicSmallCoverV5Model$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicSmallCoverV5Model* __unused self, SEL __unused _cmd, id gpbmessage) _LOGOS_RETURN_RETAINED {
    BBHotTopicSmallCoverV5Model *model = _logos_orig$_ungrouped$BBHotTopicSmallCoverV5Model$initWithGPBMessage$(self, _cmd, gpbmessage);
    if ([[[[model smallCoverV5] base] fromType] isEqualToString:@"operation"]) {
        return nil;
    }
    return model;
}






static BBHotTopicSmallCoverAdModel* _logos_method$_ungrouped$BBHotTopicSmallCoverAdModel$initWithGPBMessage$(_LOGOS_SELF_TYPE_INIT BBHotTopicSmallCoverAdModel* __unused self, SEL __unused _cmd, id gpbmessage) _LOGOS_RETURN_RETAINED {
    return nil;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBHotTopicTopicListModel = objc_getClass("BBHotTopicTopicListModel"); { MSHookMessageEx(_logos_class$_ungrouped$BBHotTopicTopicListModel, @selector(initWithGPBMessage:), (IMP)&_logos_method$_ungrouped$BBHotTopicTopicListModel$initWithGPBMessage$, (IMP*)&_logos_orig$_ungrouped$BBHotTopicTopicListModel$initWithGPBMessage$);}Class _logos_class$_ungrouped$BBHotTopicRcmdOneItemModel = objc_getClass("BBHotTopicRcmdOneItemModel"); { MSHookMessageEx(_logos_class$_ungrouped$BBHotTopicRcmdOneItemModel, @selector(initWithGPBMessage:), (IMP)&_logos_method$_ungrouped$BBHotTopicRcmdOneItemModel$initWithGPBMessage$, (IMP*)&_logos_orig$_ungrouped$BBHotTopicRcmdOneItemModel$initWithGPBMessage$);}Class _logos_class$_ungrouped$BBHotTopicSmallCoverV5Model = objc_getClass("BBHotTopicSmallCoverV5Model"); { MSHookMessageEx(_logos_class$_ungrouped$BBHotTopicSmallCoverV5Model, @selector(initWithGPBMessage:), (IMP)&_logos_method$_ungrouped$BBHotTopicSmallCoverV5Model$initWithGPBMessage$, (IMP*)&_logos_orig$_ungrouped$BBHotTopicSmallCoverV5Model$initWithGPBMessage$);}Class _logos_class$_ungrouped$BBHotTopicSmallCoverAdModel = objc_getClass("BBHotTopicSmallCoverAdModel"); { MSHookMessageEx(_logos_class$_ungrouped$BBHotTopicSmallCoverAdModel, @selector(initWithGPBMessage:), (IMP)&_logos_method$_ungrouped$BBHotTopicSmallCoverAdModel$initWithGPBMessage$, (IMP*)&_logos_orig$_ungrouped$BBHotTopicSmallCoverAdModel$initWithGPBMessage$);}} }
#line 53 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/NJHotTopicAd.xm"
