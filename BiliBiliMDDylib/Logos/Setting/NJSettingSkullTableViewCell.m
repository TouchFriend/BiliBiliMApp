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

#define NJ_SETTING_SKULL_IMAGE @"skull.png"

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
    
    [self updateUIForCurrentStyle];
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
        self.imageView.image = [[UIImage imageWithContentsOfFile:NJ_ASSET_PATH(NJ_SETTING_SKULL_IMAGE)] nj_imageWithTintColor:[UIColor whiteColor]];
    } else {
        self.imageView.image = [UIImage imageWithContentsOfFile:NJ_ASSET_PATH(NJ_SETTING_SKULL_IMAGE)];
    }
}

#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - Property Methods

@end
