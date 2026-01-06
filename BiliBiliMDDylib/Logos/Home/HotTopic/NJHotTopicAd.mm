#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/HotTopic/NJHotTopicAd.xm"













#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "NJHotTopicCardHandler.h"
#import "BAPIAppCardV1Card.h"


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

@class BAPIAppCardV1PopularTopEntrance; @class BAPIAppShowPopularV1PopularReply; 


#line 19 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Home/HotTopic/NJHotTopicAd.xm"
static BAPIAppShowPopularV1PopularReply* (*_logos_orig$App$BAPIAppShowPopularV1PopularReply$initWithData$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT BAPIAppShowPopularV1PopularReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BAPIAppShowPopularV1PopularReply* _logos_method$App$BAPIAppShowPopularV1PopularReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppShowPopularV1PopularReply*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static NSMutableArray * (*_logos_orig$App$BAPIAppCardV1PopularTopEntrance$itemsArray)(_LOGOS_SELF_TYPE_NORMAL BAPIAppCardV1PopularTopEntrance* _LOGOS_SELF_CONST, SEL); static NSMutableArray * _logos_method$App$BAPIAppCardV1PopularTopEntrance$itemsArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppCardV1PopularTopEntrance* _LOGOS_SELF_CONST, SEL); 

@interface BAPIAppShowPopularV1PopularReply : NSObject

@property (retain, nonatomic) NSMutableArray *itemsArray;

@property (nonatomic, strong) NJHotTopicCardHandler *nj_cardHandler;

@end




__attribute__((used)) static NJHotTopicCardHandler * _logos_property$App$BAPIAppShowPopularV1PopularReply$nj_cardHandler(BAPIAppShowPopularV1PopularReply * __unused self, SEL __unused _cmd) { return (NJHotTopicCardHandler *)objc_getAssociatedObject(self, (void *)_logos_property$App$BAPIAppShowPopularV1PopularReply$nj_cardHandler); }; __attribute__((used)) static void _logos_property$App$BAPIAppShowPopularV1PopularReply$setNj_cardHandler(BAPIAppShowPopularV1PopularReply * __unused self, SEL __unused _cmd, NJHotTopicCardHandler * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$App$BAPIAppShowPopularV1PopularReply$nj_cardHandler, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static BAPIAppShowPopularV1PopularReply* _logos_method$App$BAPIAppShowPopularV1PopularReply$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIAppShowPopularV1PopularReply* __unused self, SEL __unused _cmd, id data, id registry, id * error) _LOGOS_RETURN_RETAINED {
    BAPIAppShowPopularV1PopularReply *result = _logos_orig$App$BAPIAppShowPopularV1PopularReply$initWithData$extensionRegistry$error$(self, _cmd, data, registry, error);
    result.nj_cardHandler = [[NJHotTopicCardHandler alloc] init];
    
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppCardV1Card *item in result.itemsArray) {
        BAPIAppCardV1Card *cardData = [result.nj_cardHandler handleCardData:item];
        if (cardData) {
            [items addObject:cardData];
        }
    }
    result.itemsArray = items;
    return result;
}




@interface BAPIAppCardV1EntranceItem : NSObject

@property (copy, nonatomic) NSString *moduleId;

@end

@interface BAPIAppCardV1PopularTopEntrance : NSObject

@property (retain, nonatomic) NSMutableArray *itemsArray;

@end



static NSMutableArray * _logos_method$App$BAPIAppCardV1PopularTopEntrance$itemsArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppCardV1PopularTopEntrance* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableArray *origItems = _logos_orig$App$BAPIAppCardV1PopularTopEntrance$itemsArray(self, _cmd);
    NSMutableArray *items = [NSMutableArray array];
    
    BOOL goodHistoryFlag = NO;
    for (BAPIAppCardV1EntranceItem *item in origItems) {
        if ([item.moduleId isEqualToString:@"hot-h5"] &&
            !goodHistoryFlag) {
            continue;
        }
        
        if ([item.moduleId isEqualToString:@"good-history"]) {
            goodHistoryFlag = YES;
        }
        [items addObject:item];
    }
    
    [self setItemsArray:items];
    return items;
}





static __attribute__((constructor)) void _logosLocalCtor_a0d0ee7f(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BAPIAppShowPopularV1PopularReply = objc_getClass("BAPIAppShowPopularV1PopularReply"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NJHotTopicCardHandler\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$App$BAPIAppShowPopularV1PopularReply, "nj_cardHandler", _attributes, attrc); char _typeEncoding[1024]; snprintf(_typeEncoding, 1024, "%s@:", @encode(NJHotTopicCardHandler *)); class_addMethod(_logos_class$App$BAPIAppShowPopularV1PopularReply, @selector(nj_cardHandler), (IMP)&_logos_property$App$BAPIAppShowPopularV1PopularReply$nj_cardHandler, _typeEncoding); snprintf(_typeEncoding, 1024, "v@:%s", @encode(NJHotTopicCardHandler *)); class_addMethod(_logos_class$App$BAPIAppShowPopularV1PopularReply, @selector(setNj_cardHandler:), (IMP)&_logos_property$App$BAPIAppShowPopularV1PopularReply$setNj_cardHandler, _typeEncoding); } { MSHookMessageEx(_logos_class$App$BAPIAppShowPopularV1PopularReply, @selector(initWithData:extensionRegistry:error:), (IMP)&_logos_method$App$BAPIAppShowPopularV1PopularReply$initWithData$extensionRegistry$error$, (IMP*)&_logos_orig$App$BAPIAppShowPopularV1PopularReply$initWithData$extensionRegistry$error$);}Class _logos_class$App$BAPIAppCardV1PopularTopEntrance = objc_getClass("BAPIAppCardV1PopularTopEntrance"); { MSHookMessageEx(_logos_class$App$BAPIAppCardV1PopularTopEntrance, @selector(itemsArray), (IMP)&_logos_method$App$BAPIAppCardV1PopularTopEntrance$itemsArray, (IMP*)&_logos_orig$App$BAPIAppCardV1PopularTopEntrance$itemsArray);}}
    }
}



