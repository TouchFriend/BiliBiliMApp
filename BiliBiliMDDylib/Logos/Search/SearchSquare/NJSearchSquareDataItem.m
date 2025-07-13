//
//  NJSearchSquareDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/12.
//

#import "NJSearchSquareDataItem.h"
#import "NJSearchSquareCardHandler.h"

@interface NJSearchSquareDataItem ()

/// 处理卡片数据
@property (nonatomic, strong) NJSearchSquareCardHandler *cardHandler;


@end

@implementation NJSearchSquareDataItem

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
    self.cardHandler = [[NJSearchSquareCardHandler alloc] init];
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/v2/search/square";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"] isKindOfClass:[NSMutableArray class]]) {
            NSMutableArray *items = allDataDic[@"data"];
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


#pragma mark - Property Methods







@end

