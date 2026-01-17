//
//  BBMFInlineSettingCell.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import <UIKit/UIKit.h>

@interface BBMFInlineSettingCell : UITableViewCell

@property (retain, nonatomic) UILabel *titleLab;
@property (retain, nonatomic) UIImageView *checkImgV;
@property (retain, nonatomic) UIView *lineView;

/* instance methods */
- (id)initWithStyle:(long long)style reuseIdentifier:(id)identifier;
- (void)configUI;
- (void)installWithTitle:(id)title isSelected:(_Bool)selected;
- (void)themeChanged;
- (void)updateHDNewUI;

@end
