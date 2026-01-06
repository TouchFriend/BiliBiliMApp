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
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:NJ_SHARE_DATA_BIZ_ID
                                                             cellId:NJ_COMMON_CELL_ID
                                                              title:@"分享数据"]];
    [datas addObject:[self version]];
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:NJ_OFFICIAL_WEBSITE_BIZ_ID
                                                             cellId:NJ_COMMON_CELL_ID
                                                              title:@"官网"]];
    return [datas copy];
}

- (NJSettingSkullViewModel *)version {
    NJSettingSkullViewModel *model = [[NJSettingSkullViewModel alloc] initWithBizId:NJ_APP_VERSION_BIZ_ID
                                                                             cellId:NJ_COMMON_CELL_ID
                                                                              title:@"版本"];
    model.subTitle = [NJPluginInfo versionInfo];
    return model;
}

@end
