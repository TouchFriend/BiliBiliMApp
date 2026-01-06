#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Setting/NJSetting.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import <objc/objc-runtime.h>
#import "NJSettingSkullTableViewCell.h"
#import "NJSettingSkullViewModel.h"
#import "NJSettingSeparatorHeaderView.h"
#import "NJSettingDefine.h"
#import "NJSettingInjectDataProvider.h"
#import "NJSettingBizHandler.h"
#import "NJSettingSwitchTableViewCell.h"

@interface BBPhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>


- (BOOL)nj_isSettingViewController;

@property (nonatomic, strong) NSNumber *nj_isRegisteredCell;

- (void)nj_registerCell:(UITableView *)tableView;

- (NSArray<NJSettingSkullViewModel *> *)nj_injectDatas;

- (NJSettingBizHandler *)nj_bizHandler;

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

@class BBPhoneSettingMainVC; 
static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *); static NSInteger (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static UITableViewCell * (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UITableViewCell * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static CGFloat (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UIView * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static BOOL _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_isSettingViewController(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL); static NSArray<NJSettingSkullViewModel *> * _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_injectDatas(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL); static NJSettingBizHandler * _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_bizHandler(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_registerCell$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *); static void (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$viewWillTransitionToSize$withTransitionCoordinator$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, CGSize, id<UIViewControllerTransitionCoordinator>); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$viewWillTransitionToSize$withTransitionCoordinator$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, CGSize, id<UIViewControllerTransitionCoordinator>); 

#line 29 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Setting/NJSetting.xm"



__attribute__((used)) static NSNumber * _logos_property$_ungrouped$BBPhoneSettingMainVC$nj_isRegisteredCell(BBPhoneSettingMainVC * __unused self, SEL __unused _cmd) { return (NSNumber *)objc_getAssociatedObject(self, (void *)_logos_property$_ungrouped$BBPhoneSettingMainVC$nj_isRegisteredCell); }; __attribute__((used)) static void _logos_property$_ungrouped$BBPhoneSettingMainVC$setNj_isRegisteredCell(BBPhoneSettingMainVC * __unused self, SEL __unused _cmd, NSNumber * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$_ungrouped$BBPhoneSettingMainVC$nj_isRegisteredCell, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }


static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    if (![self nj_isSettingViewController]) {
        return 1;
    }
    
    [self nj_registerCell:tableView];
    return 2;
}

static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if ([self nj_isSettingViewController] &&
        section == [self numberOfSectionsInTableView:tableView] - 1) {
        return [[self nj_injectDatas] count];
    }
    return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(self, _cmd, tableView, section);
}



static UITableViewCell * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);
    }
    NJSettingSkullViewModel *viewModel = [self nj_injectDatas][indexPath.row];
    NSString *reuseIdentifier = viewModel.cellId;
    NJSettingSkullTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier
                                    forIndexPath:indexPath];
    cell.eventManager = self.nj_bizHandler.eventManager;
    [cell bindViewModel:viewModel];
    return cell;
}

static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(self, _cmd, tableView, indexPath);
    }
    return 44;
}


static void _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NJSettingSkullViewModel *viewModel = [self nj_injectDatas][indexPath.row];
    [[self nj_bizHandler] handleBizWithViewModel:viewModel];
}


static UIView * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (![self nj_isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return nil;
    }
    
    UIView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:NJ_SEPARATOR_HEADER_ID];
    return headerView;
}


static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (![self nj_isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return 0.01;
    }
    return 14;
}



static BOOL _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_isSettingViewController(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [self.navigationItem.title isEqualToString:@"设置"];
}



static NSArray<NJSettingSkullViewModel *> * _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_injectDatas(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return self.nj_bizHandler.injectDatas;
}



static NJSettingBizHandler * _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_bizHandler(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NJSettingBizHandler *bizHandler = objc_getAssociatedObject(self, @selector(nj_bizHandler));
    if (!bizHandler) {
        bizHandler = [[NJSettingBizHandler alloc] init];
        objc_setAssociatedObject(self, @selector(nj_bizHandler), bizHandler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return bizHandler;
}



static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_registerCell$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    if (!self.nj_isRegisteredCell || ![self.nj_isRegisteredCell boolValue]) {
        self.nj_isRegisteredCell = @(YES);
        
        [tableView registerClass:[NJSettingSwitchTableViewCell class] forCellReuseIdentifier:NJ_SWITCH_CELL_ID];
        [tableView registerClass:[NJSettingSkullTableViewCell class] forCellReuseIdentifier:NJ_COMMON_CELL_ID];
        
        
        [tableView registerClass:[NJSettingSeparatorHeaderView class] forHeaderFooterViewReuseIdentifier:NJ_SEPARATOR_HEADER_ID];
    }
}


static void _logos_method$_ungrouped$BBPhoneSettingMainVC$viewWillTransitionToSize$withTransitionCoordinator$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGSize size, id<UIViewControllerTransitionCoordinator> coordinator) {
    _logos_orig$_ungrouped$BBPhoneSettingMainVC$viewWillTransitionToSize$withTransitionCoordinator$(self, _cmd, size, coordinator);
    
    [[[self nj_bizHandler] shareManager] viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBPhoneSettingMainVC = objc_getClass("BBPhoneSettingMainVC"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSNumber\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$_ungrouped$BBPhoneSettingMainVC, "nj_isRegisteredCell", _attributes, attrc); char _typeEncoding[1024]; snprintf(_typeEncoding, 1024, "%s@:", @encode(NSNumber *)); class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_isRegisteredCell), (IMP)&_logos_property$_ungrouped$BBPhoneSettingMainVC$nj_isRegisteredCell, _typeEncoding); snprintf(_typeEncoding, 1024, "v@:%s", @encode(NSNumber *)); class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(setNj_isRegisteredCell:), (IMP)&_logos_property$_ungrouped$BBPhoneSettingMainVC$setNj_isRegisteredCell, _typeEncoding); } { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$, _typeEncoding); }{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIView *), strlen(@encode(UIView *))); i += strlen(@encode(UIView *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:viewForHeaderInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(CGFloat), strlen(@encode(CGFloat))); i += strlen(@encode(CGFloat)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:heightForHeaderInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_isSettingViewController), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$nj_isSettingViewController, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSArray<NJSettingSkullViewModel *> *), strlen(@encode(NSArray<NJSettingSkullViewModel *> *))); i += strlen(@encode(NSArray<NJSettingSkullViewModel *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_injectDatas), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$nj_injectDatas, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NJSettingBizHandler *), strlen(@encode(NJSettingBizHandler *))); i += strlen(@encode(NJSettingBizHandler *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_bizHandler), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$nj_bizHandler, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_registerCell:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$nj_registerCell$, _typeEncoding); }{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(viewWillTransitionToSize:withTransitionCoordinator:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$viewWillTransitionToSize$withTransitionCoordinator$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$viewWillTransitionToSize$withTransitionCoordinator$);}} }
#line 154 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Setting/NJSetting.xm"
