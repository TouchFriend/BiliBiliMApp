//
//  NJShareChannelsDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/10/27.
//

#import "NJShareChannelsDataItem.h"
#import "NJCommonDefine.h"

@implementation NJShareChannelsDataItem

#pragma mark - Life Cycle Methods



#pragma mark - Do Init

- (void)doInit {
    
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://api.bilibili.com/x/share/channels";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"] isKindOfClass:[NSMutableDictionary class]]) {
            allDataDic[@"data"] = [self handleData:allDataDic[@"data"]];
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

- (NSMutableDictionary *)handleData:(NSMutableDictionary *)dataDic {
    return dataDic;
}

#pragma mark - Property Methods

@end

