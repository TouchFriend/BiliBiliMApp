//
//  NJLiveIndexFeedDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/9.
//

#import "NJLiveIndexFeedDataItem.h"
#import "NJLiveIndexFeedCardHandler.h"
#import "NJCommonDefine.h"

@interface NJLiveIndexFeedDataItem ()

/// 处理卡片数据
@property (nonatomic, strong) NJLiveIndexFeedCardHandler *cardHandler;


@end

@implementation NJLiveIndexFeedDataItem

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
    self.cardHandler = [[NJLiveIndexFeedCardHandler alloc] init];
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://api.live.bilibili.com/xlive/app-interface/v2/index/feed";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"][@"card_list"] isKindOfClass:[NSMutableArray class]]) {
            NSMutableArray *items = allDataDic[@"data"][@"card_list"];
            NSMutableArray *newItems = [NSMutableArray array];
            for (NSMutableDictionary *itemDic in items) {
                NSDictionary *cardData = [self.cardHandler handleCardData:itemDic];
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


#pragma mark - Property Methods







@end

