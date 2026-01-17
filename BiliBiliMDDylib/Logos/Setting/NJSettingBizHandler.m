//
//  NJSettingBizHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/12/28.
//

#import "NJSettingBizHandler.h"
#import "NJSettingDefine.h"
#import "NJSettingInjectDataProvider.h"
#import "NJCommonDefine.h"
#import "UIApplication+NJCategory.h"
#import "NJInlineSettingViewController.h"
#import "NJChangePlaybackRateTool.h"
#import "NJCache.h"

// 官网地址
#define NJ_OFFICIAL_WEBSITE_URL_STR @"https://github.com/TouchFriend/BiliBiliMApp"

@interface NJSettingBizHandler ()

/// 数据提供者
@property (nonatomic, strong) NJSettingInjectDataProvider *dataProvider;
/// 是否提示过重启
@property (nonatomic, assign) BOOL isRebootTip;


@end

@implementation NJSettingBizHandler

#pragma mark - Life Cycle Methods

- (instancetype)initWithSettingViewController:(UIViewController *)settingViewController tableView:(UITableView *)tableView {
    self = [super init];
    if (self) {
        self.settingViewController = settingViewController;
        self.tableView = tableView;
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    self.shareManager = [[NJShareManager alloc] init];
    [self initEventManager];
    self.dataProvider = [[NJSettingInjectDataProvider alloc] init];
    self.injectDatas = self.dataProvider.injectDatas;
    self.isRebootTip = NO;
}

- (void)initEventManager {
    self.eventManager = [[NJSettingEventManager alloc] init];
    __weak typeof(self) weakSelf = self;
    self.eventManager.aSwitchChange = ^(UISwitch * _Nonnull aSwitch, NJSettingSwitchViewModel * _Nonnull viewModel) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf aSwitchChange:aSwitch
                        viewModel:viewModel];
    };
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (void)handleBizWithViewModel:(NJSettingSkullViewModel *)viewModel {
    NSString *bizId = viewModel.bizId;
    // 分享数据
    if ([bizId isEqualToString:NJ_SHARE_DATA_BIZ_ID]) {
        [self.shareManager shareCacheFolder];
        return;
    }
    // 官网
    if ([bizId isEqualToString:NJ_OFFICIAL_WEBSITE_BIZ_ID]) {
        NSURL *url = [NSURL URLWithString:NJ_OFFICIAL_WEBSITE_URL_STR];
        [[UIApplication sharedApplication] openURL:url
                                           options:@{}
                                 completionHandler:nil];
        return;
    }
    // 默认播放速度
    if ([bizId isEqualToString:NJ_DEFAULT_PLAYBACK_RATE]) {
        [self handleDefaultPlaybackRateWithViewModel:viewModel];
        return;
    }
}

#pragma mark - Private Methods

- (void)handleDefaultPlaybackRateWithViewModel:(NJSettingSkullViewModel *)viewModel {
    NSString *selectedValue = viewModel.subTitle;
    NSMutableArray<NJInlineSettingModel *> *dataSource = [NSMutableArray array];
    NSArray<NSString *> *oldPlaybackRates = [NJChangePlaybackRateTool currentPlaybackRates];
    for (NSString *rate in oldPlaybackRates) {
        BOOL selected = rate.doubleValue == selectedValue.doubleValue;
        NJInlineSettingModel *model = [[NJInlineSettingModel alloc] initWithTitle:rate bizId:rate selected:selected];
        [dataSource addObject:model];
    }
    
    NJInlineSettingViewController *inlineVC = [[NJInlineSettingViewController alloc] initWithStyle:UITableViewStylePlain title:@"默认播放速度" dataSource:[dataSource copy]];
    __weak typeof(self) weakSelf = self;
    inlineVC.selectedHandler = ^(NJInlineSettingModel * _Nonnull model) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf handleChangeDefaultPlaybackRate:model viewModel:viewModel];
    };
    [self.settingViewController.navigationController pushViewController:inlineVC animated:YES];
}

- (void)handleChangeDefaultPlaybackRate:(NJInlineSettingModel *)model viewModel:(NJSettingSkullViewModel *)viewModel {
    NSString *rate = model.title;
    viewModel.subTitle = rate;
    // 保存
    [[NJCache sharedInstance] saveDefaultPlaybackRate:rate];
    [self.tableView reloadData];
}

- (void)aSwitchChange:(UISwitch *)aSwitch
            viewModel:(NJSettingSwitchViewModel *)viewModel {
    NSString *saveKey = viewModel.saveKey;
    [NJ_USER_DEFAULTS setBool:viewModel.on forKey:saveKey];
    [self rebootTip];
}

// 重启提示
- (void)rebootTip {
    if (self.isRebootTip) {
        return;
    }
    self.isRebootTip = YES;
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"重启应用生效"
                                                                   message:nil
                                                            preferredStyle:UIAlertControllerStyleAlert];
    [self.settingViewController presentViewController:alert animated:YES completion:^{
        // 当弹窗展示完成后，延迟2秒再自动关闭
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)),
                       dispatch_get_main_queue(), ^{
            [alert dismissViewControllerAnimated:YES completion:nil];
        });
    }];
}

#pragma mark - Property Methods


@end
