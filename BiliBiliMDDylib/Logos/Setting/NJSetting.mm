#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Setting/NJSetting.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "UIApplication+NJCategory.h"
#import "NJSettingSkullTableViewCell.h"

@interface BBPhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>


- (void)nj_autoChange:(UISwitch *)autoSwitch;

- (void)nj_rebootTip;

- (BOOL)isSettingViewController;

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
static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *); static NSInteger (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_masterSwitchChange$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UISwitch *); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_rebootTip(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL); static UITableViewCell * (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UITableViewCell * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static CGFloat (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UIView * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static BOOL _logos_method$_ungrouped$BBPhoneSettingMainVC$isSettingViewController(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL); 

#line 19 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Setting/NJSetting.xm"



static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    if (![self isSettingViewController]) {
        return 1;
    }
    return 2;
}

static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if ([self isSettingViewController] &&
        section == [self numberOfSectionsInTableView:tableView] - 1) {
        return 1;
    }
    return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(self, _cmd, tableView, section);
}



static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_masterSwitchChange$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch * masterSwitch) {
    [NJ_USER_DEFAULTS setBool:masterSwitch.isOn forKey:NJ_MASTER_SWITCH_KEY];
    [self nj_rebootTip];
}



static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_rebootTip(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    UIViewController *vc = [UIApplication nj_topMostViewController];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"重启应用生效"
                                                                   message:nil
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [vc presentViewController:alert animated:YES completion:^{
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)),
                       dispatch_get_main_queue(), ^{
            [alert dismissViewControllerAnimated:YES completion:nil];
        });
    }];
}

static UITableViewCell * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (![self isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);
    }
    NSString *reuseIdentifier = indexPath.row == 0 ? @"masterSwitchCellId" : @"exitCellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[NJSettingSkullTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    
    if (indexPath.row == 0) {
        [(NJSettingSkullTableViewCell *)cell setTitle:@"总开关"];
        UISwitch *masterSwitch = [[UISwitch alloc] init];
        cell.accessoryView = masterSwitch;
        masterSwitch.on = NJ_MASTER_SWITCH_VALUE;
        [masterSwitch addTarget:self action:@selector(nj_masterSwitchChange:) forControlEvents:UIControlEventValueChanged];
    }
    return cell;
}

static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (![self isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(self, _cmd, tableView, indexPath);
    }
    return 44;
}


static void _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (![self isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


static UIView * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (![self isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return nil;
    }
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}


static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (![self isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return 0.01;
    }
    return 14;
}



static BOOL _logos_method$_ungrouped$BBPhoneSettingMainVC$isSettingViewController(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [self.navigationItem.title isEqualToString:@"设置"];
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBPhoneSettingMainVC = objc_getClass("BBPhoneSettingMainVC"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$, _typeEncoding); }{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UISwitch *), strlen(@encode(UISwitch *))); i += strlen(@encode(UISwitch *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_masterSwitchChange:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$nj_masterSwitchChange$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_rebootTip), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$nj_rebootTip, _typeEncoding); }{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIView *), strlen(@encode(UIView *))); i += strlen(@encode(UIView *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:viewForHeaderInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(CGFloat), strlen(@encode(CGFloat))); i += strlen(@encode(CGFloat)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:heightForHeaderInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(isSettingViewController), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$isSettingViewController, _typeEncoding); }} }
#line 126 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Setting/NJSetting.xm"
