//
//  NJSettingSwitchTableViewCell.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/6.
//

#import "NJSettingSwitchTableViewCell.h"

@implementation NJSettingSwitchTableViewCell

@dynamic viewModel;

#pragma mark - Life Cycle Methods



#pragma mark - Do Init



#pragma mark - Override Methods

- (void)prepareForReuse {
    [super prepareForReuse];
    self.aSwitch.on = NO;
}

- (void)setupUI {
    [super setupUI];
    // 总开关
    UISwitch *aSwitch = [[UISwitch alloc] init];
    self.aSwitch = aSwitch;
    self.accessoryView = aSwitch;
    aSwitch.on = NO;
    [aSwitch addTarget:self action:@selector(aSwitchChange:) forControlEvents:UIControlEventValueChanged];
}

- (void)bindViewModel:(NJSettingSkullViewModel *)viewModel {
    [super bindViewModel:viewModel];
    
    self.aSwitch.on = self.viewModel.on;
}

#pragma mark - Public Methods


/// 开关切换
/// - Parameter aSwitch: 开关
- (void)aSwitchChange:(UISwitch *)aSwitch {
    self.viewModel.on = aSwitch.on;
    if (self.eventManager.aSwitchChange) {
        self.eventManager.aSwitchChange(aSwitch, self.viewModel);
    }
}

#pragma mark - Private Methods




#pragma mark - Property Methods







@end
