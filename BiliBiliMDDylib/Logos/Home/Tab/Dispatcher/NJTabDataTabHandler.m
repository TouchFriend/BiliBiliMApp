//
//  NJTabDataTabHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/4.
//

#import "NJTabDataTabHandler.h"

@implementation NJTabDataTabHandler

#pragma mark - Life Cycle Methods


#pragma mark - Override Methods

/// 业务类型
- (NSString *)bizType {
    return @"tab";
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

/// 处理数据
/// - Parameter tabData: 版块数据
- (NSDictionary *)handleItemData:(NSMutableDictionary *)tabData {
    NSString *uri = tabData[@"uri"];
    if (!uri || ![uri isKindOfClass:[NSString class]]) {
        return tabData;
    }
    // 活动版块，比如新征程
    if ([uri containsString:@"home_activity_tab"]) {
        return nil;
    }
    return tabData;
}

@end
