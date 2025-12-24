#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailAd.xm"









































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

@class BAPIAppViewuniteV1IntroductionTab; @class BBAdCommonBaseModel; @class BBAdUGCContext; @class BAPIAppViewuniteCommonModule; @class BAPIAppViewuniteV1RelatesFeedReply; @class BAPIAppViewuniteCommonRelates; @class BBPlayerNetworkPlayerItemRecorder; @class BBAdSourceContent; @class BBPlayerToastContainerWidget; 


#line 45 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailAd.xm"
static BBAdUGCContext* (*_logos_orig$App$BBAdUGCContext$initWithResovler$)(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCContext* _logos_method$App$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static NSString * (*_logos_orig$App$BAPIAppViewuniteCommonModule$description)(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonModule* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BAPIAppViewuniteCommonModule$description(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonModule* _LOGOS_SELF_CONST, SEL); static NSMutableArray * (*_logos_orig$App$BAPIAppViewuniteV1IntroductionTab$modulesArray)(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST, SEL); static NSMutableArray * _logos_method$App$BAPIAppViewuniteV1IntroductionTab$modulesArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST, SEL); static NSSet<NSNumber *> * _logos_method$App$BAPIAppViewuniteV1IntroductionTab$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST, SEL); static NSMutableArray * (*_logos_orig$App$BAPIAppViewuniteCommonRelates$cardsArray)(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonRelates* _LOGOS_SELF_CONST, SEL); static NSMutableArray * _logos_method$App$BAPIAppViewuniteCommonRelates$cardsArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonRelates* _LOGOS_SELF_CONST, SEL); static BAPIAppViewuniteV1RelatesFeedReply* (*_logos_orig$App$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT BAPIAppViewuniteV1RelatesFeedReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BAPIAppViewuniteV1RelatesFeedReply* _logos_method$App$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppViewuniteV1RelatesFeedReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BBAdSourceContent* (*_logos_orig$App$BBAdSourceContent$init)(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static BBAdSourceContent* _logos_method$App$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$App$BBAdCommonBaseModel$modelWithMossMessage$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$App$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$App$BBPlayerToastContainerWidget$presentOperableToastWithHintText$descText$actionText$actionBlock$closeBlock$)(_LOGOS_SELF_TYPE_NORMAL BBPlayerToastContainerWidget* _LOGOS_SELF_CONST, SEL, id, id, id, id, id); static id _logos_method$App$BBPlayerToastContainerWidget$presentOperableToastWithHintText$descText$actionText$actionBlock$closeBlock$(_LOGOS_SELF_TYPE_NORMAL BBPlayerToastContainerWidget* _LOGOS_SELF_CONST, SEL, id, id, id, id, id); static long long (*_logos_orig$App$BBPlayerNetworkPlayerItemRecorder$isCellularNetworkToastShowed)(_LOGOS_SELF_TYPE_NORMAL BBPlayerNetworkPlayerItemRecorder* _LOGOS_SELF_CONST, SEL); static long long _logos_method$App$BBPlayerNetworkPlayerItemRecorder$isCellularNetworkToastShowed(_LOGOS_SELF_TYPE_NORMAL BBPlayerNetworkPlayerItemRecorder* _LOGOS_SELF_CONST, SEL); 

@interface BBAdUGCContext : NSObject

@end




static BBAdUGCContext* _logos_method$App$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext* __unused self, SEL __unused _cmd, id resovler) _LOGOS_RETURN_RETAINED {
    return nil;
}






@interface BAPIAppViewuniteCommonModule : NSObject

@property (nonatomic, assign) int type;

@end



static NSString * _logos_method$App$BAPIAppViewuniteCommonModule$description(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonModule* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *orig = _logos_orig$App$BAPIAppViewuniteCommonModule$description(self, _cmd);
    NSString *ret = [orig stringByAppendingFormat:@"type: %@", @(self.type)];
    return ret;
}



@interface BAPIAppViewuniteV1IntroductionTab : NSObject

@property (retain, nonatomic) NSMutableArray *modulesArray;

- (NSSet<NSNumber *> *)nj_filterTypes;

@end




static NSMutableArray * _logos_method$App$BAPIAppViewuniteV1IntroductionTab$modulesArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableArray *origModules = _logos_orig$App$BAPIAppViewuniteV1IntroductionTab$modulesArray(self, _cmd);
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppViewuniteCommonModule *item in origModules) {
        if ([[self nj_filterTypes] containsObject:@(item.type)]) {
            continue;
        }
        [items addObject:item];
    }
    
    [self setModulesArray:items];
    return items;
}


static NSSet<NSNumber *> * _logos_method$App$BAPIAppViewuniteV1IntroductionTab$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(55),      
            @(29),      
            @(34),      
            @(36),      
            @(12),      
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}




@interface BAPIAppViewuniteCommonCardBasicInfo : NSObject


@property (copy, nonatomic) NSString *from;

@end


@interface BAPIAppViewuniteCommonRelateCard : NSObject


@property (nonatomic, assign) int relateCardType;

@property (nonatomic) _Bool hasCmStock;

@property (retain, nonatomic) BAPIAppViewuniteCommonCardBasicInfo *basicInfo;

@end

@interface NJDetailIntroductionCardFilterTool : NSObject


+ (NSSet<NSNumber *> *)filterTypes;

@end

@implementation NJDetailIntroductionCardFilterTool










+ (NSSet<NSNumber *> *)filterTypes {
    static NSSet *filterSet;
    if (!filterSet) {
        NSArray *types = @[
            @(3),   
            @(4),   
            @(5),   
            @(6),   
            @(10),  
        ];
        filterSet = [NSSet setWithArray:types];
    }
    return filterSet;
}

@end

@interface BAPIAppViewuniteCommonRelates : NSObject

@property (retain, nonatomic) NSMutableArray *cardsArray;

@end



static NSMutableArray * _logos_method$App$BAPIAppViewuniteCommonRelates$cardsArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonRelates* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableArray *origCards = _logos_orig$App$BAPIAppViewuniteCommonRelates$cardsArray(self, _cmd);
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppViewuniteCommonRelateCard *item in origCards) {
        if ([[NJDetailIntroductionCardFilterTool filterTypes] containsObject:@(item.relateCardType)] ||
            item.hasCmStock) {
            continue;
        }
        
        if ([item.basicInfo.from isEqualToString:@"operation"]) {
            continue;
        }
        [items addObject:item];
    }
    
    [self setCardsArray:items];
    return items;
}




@interface BAPIAppViewuniteV1RelatesFeedReply : NSObject

@property (retain, nonatomic) NSMutableArray *relatesArray;

@end



static BAPIAppViewuniteV1RelatesFeedReply* _logos_method$App$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppViewuniteV1RelatesFeedReply* __unused self, SEL __unused _cmd, id data, id registry, id * error) _LOGOS_RETURN_RETAINED {
    BAPIAppViewuniteV1RelatesFeedReply *result = _logos_orig$App$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$(self, _cmd, data, registry, error);
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppViewuniteCommonRelateCard *item in result.relatesArray) {
        if ([[NJDetailIntroductionCardFilterTool filterTypes] containsObject:@(item.relateCardType)] ||
            item.hasCmStock) {
            continue;
        }
        [items addObject:item];
    }
    result.relatesArray = items;
    return result;
}










static BBAdSourceContent* _logos_method$App$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}





static id _logos_meta_method$App$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id message) {
    return nil;
}










static id _logos_method$App$BBPlayerToastContainerWidget$presentOperableToastWithHintText$descText$actionText$actionBlock$closeBlock$(_LOGOS_SELF_TYPE_NORMAL BBPlayerToastContainerWidget* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id hintText, id descText, id actionText, id actionBlock, id closeBlock) {
    return _logos_orig$App$BBPlayerToastContainerWidget$presentOperableToastWithHintText$descText$actionText$actionBlock$closeBlock$(self, _cmd, hintText, descText, actionText, actionBlock, closeBlock);
}






static long long _logos_method$App$BBPlayerNetworkPlayerItemRecorder$isCellularNetworkToastShowed(_LOGOS_SELF_TYPE_NORMAL BBPlayerNetworkPlayerItemRecorder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NSIntegerMax;
}







static __attribute__((constructor)) void _logosLocalCtor_d31f369b(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BBAdUGCContext = objc_getClass("BBAdUGCContext"); { MSHookMessageEx(_logos_class$App$BBAdUGCContext, @selector(initWithResovler:), (IMP)&_logos_method$App$BBAdUGCContext$initWithResovler$, (IMP*)&_logos_orig$App$BBAdUGCContext$initWithResovler$);}Class _logos_class$App$BAPIAppViewuniteCommonModule = objc_getClass("BAPIAppViewuniteCommonModule"); { MSHookMessageEx(_logos_class$App$BAPIAppViewuniteCommonModule, @selector(description), (IMP)&_logos_method$App$BAPIAppViewuniteCommonModule$description, (IMP*)&_logos_orig$App$BAPIAppViewuniteCommonModule$description);}Class _logos_class$App$BAPIAppViewuniteV1IntroductionTab = objc_getClass("BAPIAppViewuniteV1IntroductionTab"); { MSHookMessageEx(_logos_class$App$BAPIAppViewuniteV1IntroductionTab, @selector(modulesArray), (IMP)&_logos_method$App$BAPIAppViewuniteV1IntroductionTab$modulesArray, (IMP*)&_logos_orig$App$BAPIAppViewuniteV1IntroductionTab$modulesArray);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSNumber *> *), strlen(@encode(NSSet<NSNumber *> *))); i += strlen(@encode(NSSet<NSNumber *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppViewuniteV1IntroductionTab, @selector(nj_filterTypes), (IMP)&_logos_method$App$BAPIAppViewuniteV1IntroductionTab$nj_filterTypes, _typeEncoding); }Class _logos_class$App$BAPIAppViewuniteCommonRelates = objc_getClass("BAPIAppViewuniteCommonRelates"); { MSHookMessageEx(_logos_class$App$BAPIAppViewuniteCommonRelates, @selector(cardsArray), (IMP)&_logos_method$App$BAPIAppViewuniteCommonRelates$cardsArray, (IMP*)&_logos_orig$App$BAPIAppViewuniteCommonRelates$cardsArray);}Class _logos_class$App$BAPIAppViewuniteV1RelatesFeedReply = objc_getClass("BAPIAppViewuniteV1RelatesFeedReply"); { MSHookMessageEx(_logos_class$App$BAPIAppViewuniteV1RelatesFeedReply, @selector(initWithData:extensionRegistry:error:), (IMP)&_logos_method$App$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$, (IMP*)&_logos_orig$App$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$);}Class _logos_class$App$BBAdSourceContent = objc_getClass("BBAdSourceContent"); { MSHookMessageEx(_logos_class$App$BBAdSourceContent, @selector(init), (IMP)&_logos_method$App$BBAdSourceContent$init, (IMP*)&_logos_orig$App$BBAdSourceContent$init);}Class _logos_class$App$BBAdCommonBaseModel = objc_getClass("BBAdCommonBaseModel"); Class _logos_metaclass$App$BBAdCommonBaseModel = object_getClass(_logos_class$App$BBAdCommonBaseModel); { MSHookMessageEx(_logos_metaclass$App$BBAdCommonBaseModel, @selector(modelWithMossMessage:), (IMP)&_logos_meta_method$App$BBAdCommonBaseModel$modelWithMossMessage$, (IMP*)&_logos_meta_orig$App$BBAdCommonBaseModel$modelWithMossMessage$);}Class _logos_class$App$BBPlayerToastContainerWidget = objc_getClass("BBPlayerToastContainerWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerToastContainerWidget, @selector(presentOperableToastWithHintText:descText:actionText:actionBlock:closeBlock:), (IMP)&_logos_method$App$BBPlayerToastContainerWidget$presentOperableToastWithHintText$descText$actionText$actionBlock$closeBlock$, (IMP*)&_logos_orig$App$BBPlayerToastContainerWidget$presentOperableToastWithHintText$descText$actionText$actionBlock$closeBlock$);}Class _logos_class$App$BBPlayerNetworkPlayerItemRecorder = objc_getClass("BBPlayerNetworkPlayerItemRecorder"); { MSHookMessageEx(_logos_class$App$BBPlayerNetworkPlayerItemRecorder, @selector(isCellularNetworkToastShowed), (IMP)&_logos_method$App$BBPlayerNetworkPlayerItemRecorder$isCellularNetworkToastShowed, (IMP*)&_logos_orig$App$BBPlayerNetworkPlayerItemRecorder$isCellularNetworkToastShowed);}}
    }
}
