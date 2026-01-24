//
//  NJSettingInjectDataProvider.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import "NJSettingInjectDataProvider.h"
#import "NJSettingSkullViewModel.h"
#import "NJSettingDefine.h"
#import "NJPluginInfo.h"
#import "NJSettingSwitchViewModel.h"
#import "NJCommonDefine.h"
#import "NJCache.h"
#import "NJInlineSettingModel.h"

@implementation NJSettingInjectDataProvider


/// 要注入的数据
- (NSArray<NJSettingSkullViewModel *> *)injectDatas {
    NSMutableArray *datas = [NSMutableArray array];
    [datas addObject:[[NJSettingSwitchViewModel alloc] initWithBizId:NJ_MASTER_SWITCH_BIZ_ID
                                                           cellId:NJ_SWITCH_CELL_ID
                                                            title:@"总开关"
                                                                  on:NJ_MASTER_SWITCH_VALUE
                                                             saveKey:NJ_MASTER_SWITCH_KEY]];
    [datas addObject:[[NJSettingSwitchViewModel alloc] initWithBizId:NJ_PUBLISH_BIZ_ID
                                                           cellId:NJ_SWITCH_CELL_ID
                                                            title:@"底部栏-发布(+)"
                                                                  on:NJ_PUBLISH_VALUE saveKey:NJ_PUBLISH_KEY]];
    [datas addObject:[[NJSettingSwitchViewModel alloc] initWithBizId:NJ_MALL_BIZ_ID
                                                           cellId:NJ_SWITCH_CELL_ID
                                                            title:@"底部栏-会员购"
                                                                  on:NJ_MALL_VALUE saveKey:NJ_MALL_KEY]];
    [datas addObject:[[NJSettingSwitchViewModel alloc] initWithBizId:NJ_UNUSED_SERVICE_BIZ_ID
                                                           cellId:NJ_SWITCH_CELL_ID
                                                            title:@"我的-不常用服务"
                                                                  on:NJ_UNUSED_SERVICE_VALUE saveKey:NJ_UNUSED_SERVICE_KEY]];
    [datas addObject:[self defaultPlaybackRate]];
    [datas addObject:[self followDefaultTab]];
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:NJ_SHARE_DATA_BIZ_ID
                                                             cellId:NJ_COMMON_CELL_ID
                                                              title:@"分享数据"]];
    [datas addObject:[self version]];
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:NJ_OFFICIAL_WEBSITE_BIZ_ID
                                                             cellId:NJ_COMMON_CELL_ID
                                                              title:@"官网"]];
    return [datas copy];
}

/// 默认播放速度
- (NJSettingSkullViewModel *)defaultPlaybackRate {
    NJSettingSkullViewModel *model = [[NJSettingSkullViewModel alloc] initWithBizId:NJ_DEFAULT_PLAYBACK_RATE
                                                                             cellId:NJ_ARROW_CELL_ID
                                                                              title:@"默认播放速度"];
    model.subTitle = [[NJCache sharedInstance] defaultPlaybackRate];
    return model;
}

/// 关注页的默认版块
- (NJSettingSkullViewModel *)followDefaultTab {
    NJSettingSkullViewModel *model = [[NJSettingSkullViewModel alloc] initWithBizId:NJ_FOLLOW_DEFAULT_TAB
                                                                             cellId:NJ_ARROW_CELL_ID
                                                                              title:@"关注页的默认版块"];
    model.subTitle = [self followDefaultTabSubTitle];
    return model;
}

- (NSString *)followDefaultTabSubTitle {
    NSString *followDefaultTab = [[NJCache sharedInstance] followDefaultTab];
    NSArray<NJInlineSettingModel *> *tabs = [self followTabs];
    for (NJInlineSettingModel *model in tabs) {
        if ([model.bizId isEqualToString:followDefaultTab]) {
            return model.title;
        }
    }
    return @"";
}

/// 关注的版块数据
- (NSArray<NJInlineSettingModel *> *)followTabs {
    NSMutableArray<NJInlineSettingModel *> *tabs = [NSMutableArray array];
    [tabs addObject:[[NJInlineSettingModel alloc] initWithTitle:@"全部" bizId:@"all" selected:NO]];
    [tabs addObject:[[NJInlineSettingModel alloc] initWithTitle:@"视频" bizId:@"video" selected:NO]];
    return [tabs copy];
}

/// 版本
- (NJSettingSkullViewModel *)version {
    NJSettingSkullViewModel *model = [[NJSettingSkullViewModel alloc] initWithBizId:NJ_APP_VERSION_BIZ_ID
                                                                             cellId:NJ_COMMON_CELL_ID
                                                                              title:@"版本"];
    model.subTitle = [NJPluginInfo versionInfo];
    return model;
}



@end
