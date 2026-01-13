#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailPlayerAd.xm"


























































































































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

@class BBPlayerUpTagWidget; @class BBPlayerPortraitScreenBottomWidget; @class BFCCRONRenderBaseView; @class BBPlayerOperationTagService; @class BBPlayerBizGotoStoryWidget; @class BBPlayerGotoStoryWidget; @class BBPlayerFlexContainerWidget; 


#line 126 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJDetailPlayerAd.xm"
static BBPlayerUpTagWidget* (*_logos_orig$App$BBPlayerUpTagWidget$initWithContext$)(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static BBPlayerUpTagWidget* _logos_method$App$BBPlayerUpTagWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST, SEL); static BBPlayerBizGotoStoryWidget* (*_logos_orig$App$BBPlayerBizGotoStoryWidget$initWithContext$)(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static BBPlayerBizGotoStoryWidget* _logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget*, SEL, id) _LOGOS_RETURN_RETAINED; static BBPlayerGotoStoryWidget* (*_logos_orig$App$BBPlayerGotoStoryWidget$initWithContext$flexConfiguration$)(_LOGOS_SELF_TYPE_INIT BBPlayerGotoStoryWidget*, SEL, id, id) _LOGOS_RETURN_RETAINED; static BBPlayerGotoStoryWidget* _logos_method$App$BBPlayerGotoStoryWidget$initWithContext$flexConfiguration$(_LOGOS_SELF_TYPE_INIT BBPlayerGotoStoryWidget*, SEL, id, id) _LOGOS_RETURN_RETAINED; static NSArray * (*_logos_orig$App$BBPlayerOperationTagService$tagModels)(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static NSArray * _logos_method$App$BBPlayerOperationTagService$tagModels(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static NSSet<NSNumber *> * _logos_method$App$BBPlayerOperationTagService$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$BBPlayerFlexContainerWidget$didLayoutSubWidgets)(_LOGOS_SELF_TYPE_NORMAL BBPlayerFlexContainerWidget* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BBPlayerFlexContainerWidget$didLayoutSubWidgets(_LOGOS_SELF_TYPE_NORMAL BBPlayerFlexContainerWidget* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$BFCCRONRenderBaseView$runPackageWrapper$completion$)(_LOGOS_SELF_TYPE_NORMAL BFCCRONRenderBaseView* _LOGOS_SELF_CONST, SEL, id, id); static void _logos_method$App$BFCCRONRenderBaseView$runPackageWrapper$completion$(_LOGOS_SELF_TYPE_NORMAL BFCCRONRenderBaseView* _LOGOS_SELF_CONST, SEL, id, id); static void (*_logos_orig$App$BFCCRONRenderBaseView$runPackageWrapper$withCustomScript$completion$)(_LOGOS_SELF_TYPE_NORMAL BFCCRONRenderBaseView* _LOGOS_SELF_CONST, SEL, id, id, id); static void _logos_method$App$BFCCRONRenderBaseView$runPackageWrapper$withCustomScript$completion$(_LOGOS_SELF_TYPE_NORMAL BFCCRONRenderBaseView* _LOGOS_SELF_CONST, SEL, id, id, id); 

@interface BBPlayerWidget : NSObject

@property (readonly, weak, nonatomic) BBPlayerWidget *superWidget;
@property (readonly, copy, nonatomic) NSArray *subWidgets;

@end

@interface BBPlayerUpTagWidget : NSObject

@end




static BBPlayerUpTagWidget* _logos_method$App$BBPlayerUpTagWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerUpTagWidget* __unused self, SEL __unused _cmd, id context) _LOGOS_RETURN_RETAINED {
    return nil;
}



@interface BBPlayerPortraitScreenBottomWidget : NSObject


- (id)upTagWidget;

- (id)operationTagWidget;

@end




static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BBPlayerWidget *upTagWidget = [self upTagWidget];
    if (upTagWidget) {
        _logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints(self, _cmd);
    }
}


static void _logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints(_LOGOS_SELF_TYPE_NORMAL BBPlayerPortraitScreenBottomWidget* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BBPlayerWidget *operationTagWidget = [self operationTagWidget];
    if (operationTagWidget) {
        _logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints(self, _cmd);
    }
}







static BBPlayerBizGotoStoryWidget* _logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$(_LOGOS_SELF_TYPE_INIT BBPlayerBizGotoStoryWidget* __unused self, SEL __unused _cmd, id context) _LOGOS_RETURN_RETAINED {
    return nil;
}






static BBPlayerGotoStoryWidget* _logos_method$App$BBPlayerGotoStoryWidget$initWithContext$flexConfiguration$(_LOGOS_SELF_TYPE_INIT BBPlayerGotoStoryWidget* __unused self, SEL __unused _cmd, id context, id configuration) _LOGOS_RETURN_RETAINED {
    return nil;
}



@interface BBPlayerCoreOperationTagModel : NSObject

@property (nonatomic) unsigned long long type;

@end


@interface BBPlayerOperationTagService : NSObject

@property (retain, nonatomic) NSArray *tagModels;

- (NSSet<NSNumber *> *)nj_filterTypes;

@end



static NSArray * _logos_method$App$BBPlayerOperationTagService$tagModels(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSArray *origTagModels = _logos_orig$App$BBPlayerOperationTagService$tagModels(self, _cmd);
    NSMutableArray *items = [NSMutableArray array];
    for (BBPlayerCoreOperationTagModel *item in origTagModels) {
        if ([[self nj_filterTypes] containsObject:@(item.type)]) {
            continue;
        }
        [items addObject:item];
    }
    
    [self setValue:items forKeyPath:@"_tagModels"];
    return items;
}


static NSSet<NSNumber *> * _logos_method$App$BBPlayerOperationTagService$nj_filterTypes(_LOGOS_SELF_TYPE_NORMAL BBPlayerOperationTagService* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(1),      
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}



@interface BBPlayerFlexContainerWidget : BBPlayerWidget

@end



static void _logos_method$App$BBPlayerFlexContainerWidget$didLayoutSubWidgets(_LOGOS_SELF_TYPE_NORMAL BBPlayerFlexContainerWidget* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

    _logos_orig$App$BBPlayerFlexContainerWidget$didLayoutSubWidgets(self, _cmd);
}




@interface BFCCRONRenderBaseView : UIView

@end



static void _logos_method$App$BFCCRONRenderBaseView$runPackageWrapper$completion$(_LOGOS_SELF_TYPE_NORMAL BFCCRONRenderBaseView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id wrapper, id completion) {

}



static void _logos_method$App$BFCCRONRenderBaseView$runPackageWrapper$withCustomScript$completion$(_LOGOS_SELF_TYPE_NORMAL BFCCRONRenderBaseView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id wrapper, id script, id completion) {
    
}


 


static __attribute__((constructor)) void _logosLocalCtor_c9133fcb(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BBPlayerUpTagWidget = objc_getClass("BBPlayerUpTagWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerUpTagWidget, @selector(initWithContext:), (IMP)&_logos_method$App$BBPlayerUpTagWidget$initWithContext$, (IMP*)&_logos_orig$App$BBPlayerUpTagWidget$initWithContext$);}Class _logos_class$App$BBPlayerPortraitScreenBottomWidget = objc_getClass("BBPlayerPortraitScreenBottomWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerPortraitScreenBottomWidget, @selector(setupFirstControlConstraints), (IMP)&_logos_method$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints, (IMP*)&_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupFirstControlConstraints);}{ MSHookMessageEx(_logos_class$App$BBPlayerPortraitScreenBottomWidget, @selector(setupSecondControlConstraints), (IMP)&_logos_method$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints, (IMP*)&_logos_orig$App$BBPlayerPortraitScreenBottomWidget$setupSecondControlConstraints);}Class _logos_class$App$BBPlayerBizGotoStoryWidget = objc_getClass("BBPlayerBizGotoStoryWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerBizGotoStoryWidget, @selector(initWithContext:), (IMP)&_logos_method$App$BBPlayerBizGotoStoryWidget$initWithContext$, (IMP*)&_logos_orig$App$BBPlayerBizGotoStoryWidget$initWithContext$);}Class _logos_class$App$BBPlayerGotoStoryWidget = objc_getClass("BBPlayerGotoStoryWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerGotoStoryWidget, @selector(initWithContext:flexConfiguration:), (IMP)&_logos_method$App$BBPlayerGotoStoryWidget$initWithContext$flexConfiguration$, (IMP*)&_logos_orig$App$BBPlayerGotoStoryWidget$initWithContext$flexConfiguration$);}Class _logos_class$App$BBPlayerOperationTagService = objc_getClass("BBPlayerOperationTagService"); { MSHookMessageEx(_logos_class$App$BBPlayerOperationTagService, @selector(tagModels), (IMP)&_logos_method$App$BBPlayerOperationTagService$tagModels, (IMP*)&_logos_orig$App$BBPlayerOperationTagService$tagModels);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSNumber *> *), strlen(@encode(NSSet<NSNumber *> *))); i += strlen(@encode(NSSet<NSNumber *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$App$BBPlayerOperationTagService, @selector(nj_filterTypes), (IMP)&_logos_method$App$BBPlayerOperationTagService$nj_filterTypes, _typeEncoding); }Class _logos_class$App$BBPlayerFlexContainerWidget = objc_getClass("BBPlayerFlexContainerWidget"); { MSHookMessageEx(_logos_class$App$BBPlayerFlexContainerWidget, @selector(didLayoutSubWidgets), (IMP)&_logos_method$App$BBPlayerFlexContainerWidget$didLayoutSubWidgets, (IMP*)&_logos_orig$App$BBPlayerFlexContainerWidget$didLayoutSubWidgets);}Class _logos_class$App$BFCCRONRenderBaseView = objc_getClass("BFCCRONRenderBaseView"); { MSHookMessageEx(_logos_class$App$BFCCRONRenderBaseView, @selector(runPackageWrapper:completion:), (IMP)&_logos_method$App$BFCCRONRenderBaseView$runPackageWrapper$completion$, (IMP*)&_logos_orig$App$BFCCRONRenderBaseView$runPackageWrapper$completion$);}{ MSHookMessageEx(_logos_class$App$BFCCRONRenderBaseView, @selector(runPackageWrapper:withCustomScript:completion:), (IMP)&_logos_method$App$BFCCRONRenderBaseView$runPackageWrapper$withCustomScript$completion$, (IMP*)&_logos_orig$App$BFCCRONRenderBaseView$runPackageWrapper$withCustomScript$completion$);}}
    }
}
