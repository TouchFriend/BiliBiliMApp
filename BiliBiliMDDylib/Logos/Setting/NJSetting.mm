#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Setting/NJSetting.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"


@interface BBPhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

- (void)nj_autoChange:(UISwitch *)autoSwitch;

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
static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *); static NSInteger (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_autoChange$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UISwitch *); static UITableViewCell * (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UITableViewCell * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static CGFloat (*_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static void _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *); static UIView * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger); 

#line 13 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Setting/NJSetting.xm"



static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView) {
    return 2;
}

static NSInteger _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (section == [self numberOfSectionsInTableView:tableView] - 1) {
        return 1;
    }
    return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$(self, _cmd, tableView, section);
}



static void _logos_method$_ungrouped$BBPhoneSettingMainVC$nj_autoChange$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UISwitch * autoSwitch) {
    [NJ_USER_DEFAULTS setBool:autoSwitch.isOn forKey:NJ_MASTER_SWITCH_KEY];
}

static UITableViewCell * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$(self, _cmd, tableView, indexPath);
    }
    NSString *reuseIdentifier = indexPath.row == 0 ? @"autoRedPacketCellId" : @"exitCellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
        cell.backgroundColor = [UIColor whiteColor];
        cell.imageView.image = [UIImage imageWithContentsOfFile:NJ_ASSET_PATH(@"skull.png")];
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"总开关";
        UISwitch *autoSwitch = [[UISwitch alloc] init];
        cell.accessoryView = autoSwitch;
        autoSwitch.on = NJ_MASTER_SWITCH_VALUE;
        [autoSwitch addTarget:self action:@selector(nj_autoChange:) forControlEvents:UIControlEventValueChanged];
    }
    return cell;
}

static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return _logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$(self, _cmd, tableView, indexPath);
    }
    return 44;
}


static void _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


static UIView * _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (section != [self numberOfSectionsInTableView:tableView] - 1) {
        return nil;
    }
    UIView *headerView = [[UIView alloc] init];
    headerView.backgroundColor = [UIColor clearColor];
    return headerView;
}


static CGFloat _logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL BBPhoneSettingMainVC* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (section != [self numberOfSectionsInTableView:tableView] - 1) {
        return 0.01;
    }
    return 14;
}





static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBPhoneSettingMainVC = objc_getClass("BBPhoneSettingMainVC"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(numberOfSectionsInTableView:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$numberOfSectionsInTableView$, _typeEncoding); }{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$numberOfRowsInSection$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UISwitch *), strlen(@encode(UISwitch *))); i += strlen(@encode(UISwitch *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(nj_autoChange:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$nj_autoChange$, _typeEncoding); }{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$cellForRowAtIndexPath$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:heightForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$BBPhoneSettingMainVC$tableView$heightForRowAtIndexPath$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSIndexPath *), strlen(@encode(NSIndexPath *))); i += strlen(@encode(NSIndexPath *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$didSelectRowAtIndexPath$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIView *), strlen(@encode(UIView *))); i += strlen(@encode(UIView *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:viewForHeaderInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$viewForHeaderInSection$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(CGFloat), strlen(@encode(CGFloat))); i += strlen(@encode(CGFloat)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UITableView *), strlen(@encode(UITableView *))); i += strlen(@encode(UITableView *)); memcpy(_typeEncoding + i, @encode(NSInteger), strlen(@encode(NSInteger))); i += strlen(@encode(NSInteger)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBPhoneSettingMainVC, @selector(tableView:heightForHeaderInSection:), (IMP)&_logos_method$_ungrouped$BBPhoneSettingMainVC$tableView$heightForHeaderInSection$, _typeEncoding); }} }
#line 92 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Setting/NJSetting.xm"
