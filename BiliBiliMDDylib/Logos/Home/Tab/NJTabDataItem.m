//
//  NJTabDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/6.
//

#import "NJTabDataItem.h"
#import "NJCommonDefine.h"

@implementation NJTabDataItem

#pragma mark - Life Cycle Methods



#pragma mark - Do Init

- (void)doInit {
    
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/resource/show/tab/v2";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"][@"tab"] isKindOfClass:[NSMutableArray class]]) {
            NSMutableArray *items = allDataDic[@"data"][@"tab"];
            NSMutableArray *newItems = [NSMutableArray array];
            for (NSMutableDictionary *itemDic in items) {
                NSDictionary *cardData = [self handleTabData:itemDic];
                if (cardData) {
                    [newItems addObject:cardData];
                }
            }
            [items removeAllObjects];
            [items addObjectsFromArray:newItems];
        }
        NSError *serializationError = nil;
        // 序列化为 JSON Data
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:allDataDic
                                                          options:0
                                                            error:&serializationError];
        if (serializationError) {
            NSLog(@"%@:JSON 序列化失败: %@", nj_logPrefix, serializationError.localizedDescription);
        } else {
            data = jsonData;
        }
    }
    return data;
}



#pragma mark - Public Methods

#pragma mark - Private Methods

/// 处理版块数据
/// - Parameter tabData: 版块数据
- (NSDictionary *)handleTabData:(NSMutableDictionary *)tabData {
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

#pragma mark - Property Methods



@end
