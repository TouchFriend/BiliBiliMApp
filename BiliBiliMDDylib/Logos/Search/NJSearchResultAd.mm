#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Search/NJSearchResultAd.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"


@interface BAPIPolymerAppSearchV1Item : NSObject

@property (copy, nonatomic) NSString *goto_p;

@end

@interface BAPIPolymerAppSearchV1SearchAllResponse : NSObject

@property (copy, nonatomic) NSString *keyword;
@property (copy, nonatomic) NSString *trackid;
@property (retain, nonatomic) NSMutableArray *navArray;
@property (readonly, nonatomic) unsigned long long navArray_Count;
@property (retain, nonatomic) NSMutableArray *itemArray;
@property (readonly, nonatomic) unsigned long long itemArray_Count;

- (NSSet<NSString *> *)nj_filterCardTypes;

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

@class BAPIPolymerAppSearchV1SearchAllResponse; 
static BAPIPolymerAppSearchV1SearchAllResponse* (*_logos_orig$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$initWithData$extensionRegistry$error$)(_LOGOS_SELF_TYPE_INIT BAPIPolymerAppSearchV1SearchAllResponse*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static BAPIPolymerAppSearchV1SearchAllResponse* _logos_method$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIPolymerAppSearchV1SearchAllResponse*, SEL, id, id, id *) _LOGOS_RETURN_RETAINED; static NSSet<NSString *> * _logos_method$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$nj_filterCardTypes(_LOGOS_SELF_TYPE_NORMAL BAPIPolymerAppSearchV1SearchAllResponse* _LOGOS_SELF_CONST, SEL); 

#line 26 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Search/NJSearchResultAd.xm"


static BAPIPolymerAppSearchV1SearchAllResponse* _logos_method$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$initWithData$extensionRegistry$error$(_LOGOS_SELF_TYPE_INIT BAPIPolymerAppSearchV1SearchAllResponse* __unused self, SEL __unused _cmd, id data, id registry, id * error) _LOGOS_RETURN_RETAINED {
    BAPIPolymerAppSearchV1SearchAllResponse *result = _logos_orig$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$initWithData$extensionRegistry$error$(self, _cmd, data, registry, error);
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIPolymerAppSearchV1Item *item in result.itemArray) {
        if ([[self nj_filterCardTypes] containsObject:item.goto_p]) {
            continue;
        }
        [items addObject:item];
    }
    result.itemArray = items;
    return result;
}


static NSSet<NSString *> * _logos_method$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$nj_filterCardTypes(_LOGOS_SELF_TYPE_NORMAL BAPIPolymerAppSearchV1SearchAllResponse* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCardTypes));
    if (!filterSet) {
        NSArray *types = @[@"special_s",        
                           @"video_ad",         
                           @"picture_ad",       
                           @"related_search",   
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterCardTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse = objc_getClass("BAPIPolymerAppSearchV1SearchAllResponse"); { MSHookMessageEx(_logos_class$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse, @selector(initWithData:extensionRegistry:error:), (IMP)&_logos_method$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$initWithData$extensionRegistry$error$, (IMP*)&_logos_orig$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$initWithData$extensionRegistry$error$);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSString *> *), strlen(@encode(NSSet<NSString *> *))); i += strlen(@encode(NSSet<NSString *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse, @selector(nj_filterCardTypes), (IMP)&_logos_method$_ungrouped$BAPIPolymerAppSearchV1SearchAllResponse$nj_filterCardTypes, _typeEncoding); }} }
#line 57 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Search/NJSearchResultAd.xm"
