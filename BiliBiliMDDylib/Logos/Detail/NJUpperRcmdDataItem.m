//
//  NJUpperRcmdDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/21.
//

#import "NJUpperRcmdDataItem.h"

@implementation NJUpperRcmdDataItem

#pragma mark - Life Cycle Methods



#pragma mark - Do Init

- (void)doInit {
    
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/v2/view/upper/recmd";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        // 你可能感兴趣的up主
        if ([allDataDic[@"data"] isKindOfClass:[NSDictionary class]]) {
            allDataDic[@"data"] = nil;
        }
        NSError *serializationError = nil;
        // 序列化为 JSON Data
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:allDataDic
                                                          options:0
                                                            error:&serializationError];
        if (serializationError) {
            NSLog(@"cxzcxz:JSON 序列化失败: %@", serializationError.localizedDescription);
        } else {
            data = jsonData;
        }
    }
    return data;
}
#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - Property Methods

@end
