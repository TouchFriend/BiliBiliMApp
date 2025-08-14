//
//  NJSettingMasterSwitchTableViewCell.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/12.
//

#import "NJSettingMasterSwitchTableViewCell.h"
#import "NJCommonDefine.h"
#import "UIApplication+NJCategory.h"

@implementation NJSettingMasterSwitchTableViewCell

#pragma mark - Life Cycle Methods



#pragma mark - Do Init



#pragma mark - Override Methods

- (void)setupUI {
    [super setupUI];
    // 总开关
    UISwitch *masterSwitch = [[UISwitch alloc] init];
    self.accessoryView = masterSwitch;
    masterSwitch.on = NJ_MASTER_SWITCH_VALUE;
    [masterSwitch addTarget:self action:@selector(masterSwitchChange:) forControlEvents:UIControlEventValueChanged];
}

#pragma mark - Public Methods

#pragma mark - Private Methods

// 保存开关
- (void)masterSwitchChange:(UISwitch *)masterSwitch {
    [NJ_USER_DEFAULTS setBool:masterSwitch.isOn forKey:NJ_MASTER_SWITCH_KEY];
    [self rebootTip];
}

// 重启提示
- (void)rebootTip {
    UIViewController *vc = [UIApplication nj_topMostViewController];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"重启应用生效"
                                                                   message:nil
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [vc presentViewController:alert animated:YES completion:^{
        // 当弹窗展示完成后，延迟2秒再自动关闭
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)),
                       dispatch_get_main_queue(), ^{
            [alert dismissViewControllerAnimated:YES completion:nil];
        });
    }];
}

#pragma mark - Property Methods







@end
