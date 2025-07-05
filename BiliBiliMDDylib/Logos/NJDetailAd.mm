#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/NJDetailAd.xm"





























#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

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

@class BAPIAppViewuniteCommonRelates; @class BBAdCommonBaseModel; @class BBAdUGCContext; @class BAPIAppViewuniteV1IntroductionTab; @class BAPIAppViewuniteV1RelatesFeedReply; @class BBAdSourceContent; 
static BBAdUGCContext* (*_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$)(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static NSMutableArray * (*_logos_orig$_ungrouped$BAPIAppViewuniteV1IntroductionTab$modulesArray)(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST, SEL); static NSMutableArray * _logos_method$_ungrouped$BAPIAppViewuniteV1IntroductionTab$modulesArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST, SEL); static NSSet<NSNumber *> * _logos_method$_ungrouped$BAPIAppViewuniteV1IntroductionTab$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST, SEL); static NSMutableArray * (*_logos_orig$_ungrouped$BAPIAppViewuniteCommonRelates$cardsArray)(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonRelates* _LOGOS_SELF_CONST, SEL); static NSMutableArray * _logos_method$_ungrouped$BAPIAppViewuniteCommonRelates$cardsArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonRelates* _LOGOS_SELF_CONST, SEL); static BAPIAppViewuniteV1RelatesFeedReply* (*_logos_orig$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT BAPIAppViewuniteV1RelatesFeedReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BAPIAppViewuniteV1RelatesFeedReply* _logos_method$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppViewuniteV1RelatesFeedReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BBAdSourceContent* (*_logos_orig$_ungrouped$BBAdSourceContent$init)(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static BBAdSourceContent* _logos_method$_ungrouped$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); 

#line 38 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/NJDetailAd.xm"


static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext* __unused self, SEL __unused _cmd, id resovler) _LOGOS_RETURN_RETAINED {
    return nil;
}






@interface BAPIAppViewuniteCommonModule : NSObject

@property (nonatomic, assign) int type;

@end

@interface BAPIAppViewuniteV1IntroductionTab : NSObject

@property (retain, nonatomic) NSMutableArray *modulesArray;

- (NSSet<NSNumber *> *)nj_filterTypes;

@end



static NSMutableArray * _logos_method$_ungrouped$BAPIAppViewuniteV1IntroductionTab$modulesArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableArray *origModules = _logos_orig$_ungrouped$BAPIAppViewuniteV1IntroductionTab$modulesArray(self, _cmd);
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


static NSSet<NSNumber *> * _logos_method$_ungrouped$BAPIAppViewuniteV1IntroductionTab$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteV1IntroductionTab* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(0x0000000000000037),   
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}




@interface BAPIAppViewuniteCommonRelateCard : NSObject


@property (nonatomic, assign) int relateCardType;

@property (nonatomic) _Bool hasCmStock;

@end

@interface NJDetailIntroductionCardFilterTool : NSObject


+ (NSSet<NSNumber *> *)filterTypes;

@end

@implementation NJDetailIntroductionCardFilterTool







+ (NSSet<NSNumber *> *)filterTypes {
    static NSSet *filterSet;
    if (!filterSet) {
        NSArray *types = @[
            @(4),   
            @(5),   
            @(6),   
        ];
        filterSet = [NSSet setWithArray:types];
    }
    return filterSet;
}

@end

@interface BAPIAppViewuniteCommonRelates : NSObject

@property (retain, nonatomic) NSMutableArray *cardsArray;

@end



static NSMutableArray * _logos_method$_ungrouped$BAPIAppViewuniteCommonRelates$cardsArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppViewuniteCommonRelates* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableArray *origCards = _logos_orig$_ungrouped$BAPIAppViewuniteCommonRelates$cardsArray(self, _cmd);
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppViewuniteCommonRelateCard *item in origCards) {
        if ([[NJDetailIntroductionCardFilterTool filterTypes] containsObject:@(item.relateCardType)] ||
            item.hasCmStock) {
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



static BAPIAppViewuniteV1RelatesFeedReply* _logos_method$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppViewuniteV1RelatesFeedReply* __unused self, SEL __unused _cmd, id data, id registry, id * error) _LOGOS_RETURN_RETAINED {
    BAPIAppViewuniteV1RelatesFeedReply *result = _logos_orig$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$(self, _cmd, data, registry, error);
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









static BBAdSourceContent* _logos_method$_ungrouped$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return nil;
}





static id _logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id message) {
    return nil;
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBAdUGCContext = objc_getClass("BBAdUGCContext"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCContext, @selector(initWithResovler:), (IMP)&_logos_method$_ungrouped$BBAdUGCContext$initWithResovler$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$);}Class _logos_class$_ungrouped$BAPIAppViewuniteV1IntroductionTab = objc_getClass("BAPIAppViewuniteV1IntroductionTab"); { MSHookMessageEx(_logos_class$_ungrouped$BAPIAppViewuniteV1IntroductionTab, @selector(modulesArray), (IMP)&_logos_method$_ungrouped$BAPIAppViewuniteV1IntroductionTab$modulesArray, (IMP*)&_logos_orig$_ungrouped$BAPIAppViewuniteV1IntroductionTab$modulesArray);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSNumber *> *), strlen(@encode(NSSet<NSNumber *> *))); i += strlen(@encode(NSSet<NSNumber *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BAPIAppViewuniteV1IntroductionTab, @selector(nj_filterTypes), (IMP)&_logos_method$_ungrouped$BAPIAppViewuniteV1IntroductionTab$nj_filterTypes, _typeEncoding); }Class _logos_class$_ungrouped$BAPIAppViewuniteCommonRelates = objc_getClass("BAPIAppViewuniteCommonRelates"); { MSHookMessageEx(_logos_class$_ungrouped$BAPIAppViewuniteCommonRelates, @selector(cardsArray), (IMP)&_logos_method$_ungrouped$BAPIAppViewuniteCommonRelates$cardsArray, (IMP*)&_logos_orig$_ungrouped$BAPIAppViewuniteCommonRelates$cardsArray);}Class _logos_class$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply = objc_getClass("BAPIAppViewuniteV1RelatesFeedReply"); { MSHookMessageEx(_logos_class$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply, @selector(initWithData:extensionRegistry:error:), (IMP)&_logos_method$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$, (IMP*)&_logos_orig$_ungrouped$BAPIAppViewuniteV1RelatesFeedReply$initWithData$extensionRegistry$error$);}Class _logos_class$_ungrouped$BBAdSourceContent = objc_getClass("BBAdSourceContent"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdSourceContent, @selector(init), (IMP)&_logos_method$_ungrouped$BBAdSourceContent$init, (IMP*)&_logos_orig$_ungrouped$BBAdSourceContent$init);}Class _logos_class$_ungrouped$BBAdCommonBaseModel = objc_getClass("BBAdCommonBaseModel"); Class _logos_metaclass$_ungrouped$BBAdCommonBaseModel = object_getClass(_logos_class$_ungrouped$BBAdCommonBaseModel); { MSHookMessageEx(_logos_metaclass$_ungrouped$BBAdCommonBaseModel, @selector(modelWithMossMessage:), (IMP)&_logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$, (IMP*)&_logos_meta_orig$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$);}} }
#line 204 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/NJDetailAd.xm"
