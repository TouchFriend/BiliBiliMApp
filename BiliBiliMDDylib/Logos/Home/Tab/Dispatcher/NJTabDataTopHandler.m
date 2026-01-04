//
//  NJTabDataTopHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/4.
//

#import "NJTabDataTopHandler.h"

@implementation NJTabDataTopHandler

#pragma mark - Life Cycle Methods


#pragma mark - Override Methods

/// 业务类型
- (NSString *)bizType {
    return @"top";
}

/// 处理数据
/// - Parameter data: 要处理的数据
/// @return 处理后的数据
- (NSObject *)handleData:(NSObject *)data {
    if (![data isKindOfClass:[NSArray class]]) {
        return data;
    }
    NSArray *items = (NSArray *)data;
    NSMutableArray *newItems = [NSMutableArray array];
    for (NSMutableDictionary *itemDic in items) {
        NSDictionary *itemData = [self handleItemData:itemDic];
        if (itemData) {
            [newItems addObject:itemData];
        }
    }
    return [newItems copy];
}

#pragma mark - Private Methods

/// 处理版块数据
/// - Parameter tabData: 版块数据
- (NSDictionary *)handleItemData:(NSMutableDictionary *)tabData {
    NSString *tabId = tabData[@"tab_id"];
    if (!tabId || ![tabId isKindOfClass:[NSString class]]) {
        return tabData;
    }
    // 游戏中心
    if ([tabId isEqualToString:@"游戏中心Top"]) {
        return nil;
    }
    return tabData;
}

@end
