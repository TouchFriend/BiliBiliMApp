//
//  NJSettingSeparatorHeaderView.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/12.
//

#import "NJSettingSeparatorHeaderView.h"
#import "UIColor+NJColor.h"
#import "View+MASAdditions.h"

@interface NJSettingSeparatorHeaderView ()

/// 分割线
@property (nonatomic, strong) UIView *separatorView;


@end

@implementation NJSettingSeparatorHeaderView

#pragma mark - Life Cycle Methods

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        [self doInit];
    }
    return self;
}


#pragma mark - Do Init

- (void)doInit {
    self.backgroundColor = [UIColor clearColor];
    self.backgroundView = [[UIView alloc] init];
    
    [self setupSeparatorView];
}

- (void)setupSeparatorView {
    UIView *separatorView = [[UIView alloc] init];
    self.separatorView = separatorView;
    [self.contentView addSubview:separatorView];
    separatorView.backgroundColor = [UIColor nj_colorWithLight:[UIColor nj_colorWithHexString:@"#e3e5e7"]
                                                 dark:[UIColor nj_colorWithHexString:@"#2f3134"]];
    [separatorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(self.contentView);
        make.height.mas_equalTo(0.333);
        make.bottom.mas_equalTo(self.contentView.mas_bottom);
    }];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - Property Methods

@end
