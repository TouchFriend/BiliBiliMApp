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

@implementation NJSettingInjectDataProvider


/// 要注入的数据
- (NSArray<NJSettingSkullViewModel *> *)injectDatas {
    NSMutableArray *datas = [NSMutableArray array];
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:NJ_MASTER_SWITCH_BIZ_ID
                                                           cellId:NJ_MASTER_SWITCH_CELL_ID
                                                            title:@"总开关"]];
    [datas addObject:[[NJSettingSkullViewModel alloc] initWithBizId:NJ_SHARE_DATA_BIZ_ID
                                                             cellId:NJ_COMMON_CELL_ID
                                                              title:@"分享数据"]];
    [datas addObject:[self version]];
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
