//
//  NJRcmdCardDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/3.
//

#import "NJRcmdCardDataItem.h"
#import "NJRcmdCardHandler.h"
#import "NJDiskCacheManager.h"

@interface NJRcmdCardDataItem ()

/// 处理卡片数据
@property (nonatomic, strong) NJRcmdCardHandler *cardHandler;


@end

@implementation NJRcmdCardDataItem

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
    self.cardHandler = [[NJRcmdCardHandler alloc] init];
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/v2/feed/index";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    // 保存数据到磁盘
    [self saveDataToDisk:data];
    
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"][@"items"] isKindOfClass:[NSMutableArray class]]) {
            NSMutableArray *items = allDataDic[@"data"][@"items"];
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
            NSLog(@"cxzcxz:JSON 序列化失败: %@", serializationError.localizedDescription);
        } else {
            data = jsonData;
        }
    }
    return data;
}



#pragma mark - Public Methods

#pragma mark - Private Methods

/// 保存数据到磁盘
- (void)saveDataToDisk:(NSData *)data {
#ifdef DEBUG
    [[[NJDiskCacheManager sharedManager] homeCache] saveDataToDisk:data];
#endif
}


#pragma mark - Property Methods







@end
