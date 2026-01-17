//
//  NJSettingSkullTableViewCell.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import <UIKit/UIKit.h>
#import "NJSettingSkullViewModel.h"
#import "NJSettingEventManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingSkullTableViewCell : UITableViewCell

/// 标题
@property (nonatomic, strong, readonly) UILabel *titleLabel;
/// 副标题
@property (nonatomic, strong, readonly) UILabel *subTitleLabel;
/// 数据
@property (nonatomic, strong, readonly) NJSettingSkullViewModel *viewModel;
/// 事件管理者
@property (nonatomic, strong) NJSettingEventManager *eventManager;


- (void)bindViewModel:(NJSettingSkullViewModel *)viewModel;

- (void)setupUI;

@end

NS_ASSUME_NONNULL_END
