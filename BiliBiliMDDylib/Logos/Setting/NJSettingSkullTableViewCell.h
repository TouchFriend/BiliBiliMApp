//
//  NJSettingSkullTableViewCell.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingSkullTableViewCell : UITableViewCell

/// 标题
@property (nonatomic, strong, readonly) UILabel *titleLabel;

- (void)setTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
