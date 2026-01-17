//
//  NJSettingArrowTableViewCell.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import "NJSettingArrowTableViewCell.h"
#import "View+MASAdditions.h"

@implementation NJSettingArrowTableViewCell

#pragma mark - Life Cycle Methods



#pragma mark - Do Init



#pragma mark - Override Methods

- (void)prepareForReuse {
    [super prepareForReuse];

}

- (void)setupUI {
    [super setupUI];
    // 总开关
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    [self.subTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-5.0);
    }];
}

- (void)bindViewModel:(NJSettingSkullViewModel *)viewModel {
    [super bindViewModel:viewModel];
    
    
}

#pragma mark - Public Methods




#pragma mark - Private Methods




#pragma mark - Property Methods








@end
