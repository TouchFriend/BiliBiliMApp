//
//  NJSkinDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/4.
//

#import "NJSkinDataItem.h"
#import "NJCommonDefine.h"

@implementation NJSkinDataItem


#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/resource/show/skin";
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
            NSMutableDictionary *dataDic = allDataDic[@"data"];
            NSDictionary *dataHandled = [self handleData:dataDic];
            [dataDic removeAllObjects];
            [dataDic addEntriesFromDictionary:dataHandled];
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

#pragma mark - Private Methods

- (NSDictionary *)handleData:(NSDictionary *)data {
    NSMutableDictionary *skinData = [NSMutableDictionary dictionaryWithDictionary:data];
    // 运营主题
    skinData[@"common_equip"] = nil;
    return skinData;
}


@end
