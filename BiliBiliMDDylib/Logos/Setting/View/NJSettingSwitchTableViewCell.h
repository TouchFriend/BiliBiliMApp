//
//  NJSettingSwitchTableViewCell.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/6.
//

#import "NJSettingSkullTableViewCell.h"
#import "NJSettingSwitchViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingSwitchTableViewCell : NJSettingSkullTableViewCell

/// 开关
@property (nonatomic, strong) UISwitch *aSwitch;
/// 数据
@property (nonatomic, strong, readonly) NJSettingSwitchViewModel *viewModel;

/// 开关切换
/// - Parameter aSwitch: 开关
- (void)aSwitchChange:(UISwitch *)aSwitch;

@end

NS_ASSUME_NONNULL_END
