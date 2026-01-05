#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Dynamic/NJDynamicAd.xm"






























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

@class BAPIAppDynamicV2DynamicItem; @class BAPIAppDynamicV2DynamicList; @class BAPIAppDynamicV2AdditionCommon; @class BAPIAppDynamicV2Module; @class BAPIAppDynamicV2ModuleAdditional; @class BAPIAppDynamicV2ModuleDynamic; 


#line 34 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Dynamic/NJDynamicAd.xm"
static BOOL _logos_method$App$BAPIAppDynamicV2AdditionCommon$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2AdditionCommon* _LOGOS_SELF_CONST, SEL); static NSSet<NSNumber *> * _logos_method$App$BAPIAppDynamicV2AdditionCommon$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2AdditionCommon* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$App$BAPIAppDynamicV2ModuleAdditional$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2ModuleAdditional* _LOGOS_SELF_CONST, SEL); static NSSet<NSNumber *> * _logos_method$App$BAPIAppDynamicV2ModuleAdditional$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2ModuleAdditional* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$App$BAPIAppDynamicV2ModuleDynamic$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2ModuleDynamic* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$App$BAPIAppDynamicV2Module$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2Module* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$App$BAPIAppDynamicV2DynamicItem$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2DynamicItem* _LOGOS_SELF_CONST, SEL); static NSMutableArray * (*_logos_orig$App$BAPIAppDynamicV2DynamicList$listArray)(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2DynamicList* _LOGOS_SELF_CONST, SEL); static NSMutableArray * _logos_method$App$BAPIAppDynamicV2DynamicList$listArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2DynamicList* _LOGOS_SELF_CONST, SEL); 


@interface BAPIAppDynamicV2AdditionCommon : NSObject

@property (copy, nonatomic) NSString *type;
@property (copy, nonatomic) NSString *cardType;



- (BOOL)nj_isFilter;

- (NSSet<NSNumber *> *)nj_filterTypes;

@end






static BOOL _logos_method$App$BAPIAppDynamicV2AdditionCommon$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2AdditionCommon* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if ([[self nj_filterTypes] containsObject:@([self.type integerValue])]) {
        return YES;
    }
    return NO;
}



static NSSet<NSNumber *> * _logos_method$App$BAPIAppDynamicV2AdditionCommon$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2AdditionCommon* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(8),   
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}




@interface BAPIAppDynamicV2ModuleAdditional : NSObject


@property (nonatomic, assign) int type;
@property (retain, nonatomic) BAPIAppDynamicV2AdditionCommon *common;



- (BOOL)nj_isFilter;

- (NSSet<NSNumber *> *)nj_filterTypes;

@end






static BOOL _logos_method$App$BAPIAppDynamicV2ModuleAdditional$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2ModuleAdditional* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    if ([[self nj_filterTypes] containsObject:@(self.type)]) {
        return YES;
    }
    
    if (self.type == 4) {
        return [self.common nj_isFilter];
    }
    return NO;
}



static NSSet<NSNumber *> * _logos_method$App$BAPIAppDynamicV2ModuleAdditional$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2ModuleAdditional* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(2),   
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}





@interface BAPIAppDynamicV2MdlDynForward : NSObject


@property (nonatomic, strong) BAPIAppDynamicV2DynamicItem *item;

@end

@class BAPIAppDynamicV2DynamicItem;


@interface BAPIAppDynamicV2ModuleDynamic : NSObject


@property (nonatomic, assign) int type;

@property (retain, nonatomic) BAPIAppDynamicV2MdlDynForward *dynForward;



- (BOOL)nj_isFilter;

@end






static BOOL _logos_method$App$BAPIAppDynamicV2ModuleDynamic$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2ModuleDynamic* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    if (self.type == 4) {
        id item = self.dynForward.item;
        return [item nj_isFilter];
    }
    return NO;
}




@interface BAPIAppDynamicV2Module : NSObject


@property (nonatomic, assign) int moduleType;

@property (nonatomic, strong) BAPIAppDynamicV2ModuleDynamic *moduleDynamic;

@property (nonatomic, strong) BAPIAppDynamicV2ModuleAdditional *moduleAdditional;



- (BOOL)nj_isFilter;

@end






static BOOL _logos_method$App$BAPIAppDynamicV2Module$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2Module* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    if (self.moduleType == 8) {
        return [self.moduleAdditional nj_isFilter];
    }
    
    if (self.moduleType == 4) {
        return [self.moduleDynamic nj_isFilter];
    }
    return NO;
}



@interface BAPIAppDynamicV2DynamicItem : NSObject


@property (retain, nonatomic) NSMutableArray *modulesArray;



- (BOOL)nj_isFilter;

@end
















static BOOL _logos_method$App$BAPIAppDynamicV2DynamicItem$nj_isFilter(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2DynamicItem* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BOOL isFilter = NO;
    for (BAPIAppDynamicV2Module *item in self.modulesArray) {
        if ([item nj_isFilter]) {
            isFilter = YES;
            break;
        }
    }
    return isFilter;
}



@interface BAPIAppDynamicV2DynamicList : NSObject


@property (nonatomic, strong) NSMutableArray *listArray;

@end



static NSMutableArray * _logos_method$App$BAPIAppDynamicV2DynamicList$listArray(_LOGOS_SELF_TYPE_NORMAL BAPIAppDynamicV2DynamicList* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableArray *origListArray = _logos_orig$App$BAPIAppDynamicV2DynamicList$listArray(self, _cmd);
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppDynamicV2DynamicItem *item in origListArray) {
        if ([item nj_isFilter]) {
            continue;
        }
        [items addObject:item];
    }
    
    [self setListArray:items];
    return origListArray;
}





static __attribute__((constructor)) void _logosLocalCtor_2b60e928(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BAPIAppDynamicV2AdditionCommon = objc_getClass("BAPIAppDynamicV2AdditionCommon"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppDynamicV2AdditionCommon, @selector(nj_isFilter), (IMP)&_logos_method$App$BAPIAppDynamicV2AdditionCommon$nj_isFilter, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSNumber *> *), strlen(@encode(NSSet<NSNumber *> *))); i += strlen(@encode(NSSet<NSNumber *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppDynamicV2AdditionCommon, @selector(nj_filterTypes), (IMP)&_logos_method$App$BAPIAppDynamicV2AdditionCommon$nj_filterTypes, _typeEncoding); }Class _logos_class$App$BAPIAppDynamicV2ModuleAdditional = objc_getClass("BAPIAppDynamicV2ModuleAdditional"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppDynamicV2ModuleAdditional, @selector(nj_isFilter), (IMP)&_logos_method$App$BAPIAppDynamicV2ModuleAdditional$nj_isFilter, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSNumber *> *), strlen(@encode(NSSet<NSNumber *> *))); i += strlen(@encode(NSSet<NSNumber *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppDynamicV2ModuleAdditional, @selector(nj_filterTypes), (IMP)&_logos_method$App$BAPIAppDynamicV2ModuleAdditional$nj_filterTypes, _typeEncoding); }Class _logos_class$App$BAPIAppDynamicV2ModuleDynamic = objc_getClass("BAPIAppDynamicV2ModuleDynamic"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppDynamicV2ModuleDynamic, @selector(nj_isFilter), (IMP)&_logos_method$App$BAPIAppDynamicV2ModuleDynamic$nj_isFilter, _typeEncoding); }Class _logos_class$App$BAPIAppDynamicV2Module = objc_getClass("BAPIAppDynamicV2Module"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppDynamicV2Module, @selector(nj_isFilter), (IMP)&_logos_method$App$BAPIAppDynamicV2Module$nj_isFilter, _typeEncoding); }Class _logos_class$App$BAPIAppDynamicV2DynamicItem = objc_getClass("BAPIAppDynamicV2DynamicItem"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BAPIAppDynamicV2DynamicItem, @selector(nj_isFilter), (IMP)&_logos_method$App$BAPIAppDynamicV2DynamicItem$nj_isFilter, _typeEncoding); }Class _logos_class$App$BAPIAppDynamicV2DynamicList = objc_getClass("BAPIAppDynamicV2DynamicList"); { MSHookMessageEx(_logos_class$App$BAPIAppDynamicV2DynamicList, @selector(listArray), (IMP)&_logos_method$App$BAPIAppDynamicV2DynamicList$listArray, (IMP*)&_logos_orig$App$BAPIAppDynamicV2DynamicList$listArray);}}
    }
}
