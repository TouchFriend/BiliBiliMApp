//
//  NJSettingSkullTableViewCell.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import "NJSettingSkullTableViewCell.h"
#import "NJCommonDefine.h"
#import "UIColor+NJColor.h"
#import "UIImage+NJCategory.h"
#import "UIImageView+BBSFreeDataWebCache.h"
#import "View+MASAdditions.h"

#define NJ_SETTING_SKULL_IMAGE @"skull.png"
#define NJ_SETTING_SKULL_DARK_IMAGE @"skull_dark.png"

@interface NJSettingSkullTableViewCell ()

/// 骷髅图标
@property (nonatomic, strong) UIImageView *skullImageView;
/// 标题
@property (nonatomic, strong, readwrite) UILabel *titleLabel;


@end

@implementation NJSettingSkullTableViewCell

#pragma mark - Life Cycle Methods

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    self.backgroundColor = [UIColor nj_colorWithLight:[UIColor whiteColor]
                                                 dark:[UIColor nj_colorWithHexString:@"#FF17181A"]];

    [self setupSkullImageView];
    [self setupTitleLabel];
    
    [self updateUIForCurrentStyle];
}

- (void)setupSkullImageView {
    UIImageView *skullImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:skullImageView];
    self.skullImageView = skullImageView;
    self.skullImageView.contentMode = UIViewContentModeScaleAspectFit;
    [skullImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(25.0, 25.0));
        make.left.mas_offset(15.0);
        make.centerY.mas_equalTo(self.contentView);
    }];
}

- (void)setupTitleLabel {
    self.titleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.titleLabel];
    self.titleLabel.font = [UIFont systemFontOfSize:16];
    self.titleLabel.textColor = [UIColor nj_colorWithLight:[UIColor nj_colorWithHexString:@"#18191c"]
                                                      dark:[UIColor nj_colorWithHexString:@"#FFE7E9EB"]];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.skullImageView.mas_right).mas_offset(10.0);
        make.centerY.mas_equalTo(self.contentView);
        make.right.mas_equalTo(self.contentView.mas_right).mas_offset(-6.0);
    }];
}

#pragma mark - Override Methods

- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    [super traitCollectionDidChange:previousTraitCollection];
    // 检查是否是颜色风格变化
    if ([self.traitCollection hasDifferentColorAppearanceComparedToTraitCollection:previousTraitCollection]) {
        [self updateUIForCurrentStyle];
    }
}

- (void)updateUIForCurrentStyle {
    // 调整颜色
    [self updateColorsForCurrentStyle];
    // 调整图片
    [self updateImagesForCurrentStyle];
}

/// 调整颜色
- (void)updateColorsForCurrentStyle {
    if (self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
        
    } else {
        
    }
}

/// 调整图片
- (void)updateImagesForCurrentStyle {
    if (self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
        NSURL *skullImageUrl = [NSURL fileURLWithPath:NJ_ASSET_PATH(NJ_SETTING_SKULL_DARK_IMAGE)];
        [self.skullImageView liveSD_setImageWithURL:skullImageUrl];
    } else {
        NSURL *skullImageUrl = [NSURL fileURLWithPath:NJ_ASSET_PATH(NJ_SETTING_SKULL_IMAGE)];
        [self.skullImageView liveSD_setImageWithURL:skullImageUrl];
    }
    
}


#pragma mark - Public Methods

- (void)setTitle:(NSString *)title {
    self.titleLabel.text = title;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

@end
