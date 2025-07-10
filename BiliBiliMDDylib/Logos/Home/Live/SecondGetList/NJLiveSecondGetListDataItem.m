//
//  NJLiveSecondGetListDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/10.
//

#import "NJLiveSecondGetListDataItem.h"

@interface NJLiveSecondGetListDataItem ()


@end

@implementation NJLiveSecondGetListDataItem

#pragma mark - Life Cycle Methods

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://api.live.bilibili.com/xlive/app-interface/v2/second/getList";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        // banner
        if ([allDataDic[@"data"][@"banner"] isKindOfClass:[NSMutableArray class]]) {
            allDataDic[@"data"][@"banner"] = nil;
        }
        // 次级分区
        if ([allDataDic[@"data"][@"new_tags"] isKindOfClass:[NSMutableArray class]]) {
            allDataDic[@"data"][@"new_tags"] = nil;
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

