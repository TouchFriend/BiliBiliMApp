//
//  NJMineMoreServicesHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/5.
//

#import "NJMineMoreServicesHandler.h"

@interface NJMineMoreServicesHandler ()

/// 要保留的业务Id
@property (nonatomic, strong) NSArray *bizIdWhiteList;


@end

@implementation NJMineMoreServicesHandler

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
    self.bizIdWhiteList = @[@(407),   // 联系客服
                            @(410),   // 设置
    ];
}

#pragma mark - Override Methods

/// 业务类型
- (NSString *)bizType {
    return @"更多服务";
}

/// 处理数据
/// - Parameter data: 要处理的数据
/// @return 处理后的数据
- (NSDictionary *)handleData:(NSDictionary *)data {
    if (!data[@"items"] ||
        ![data[@"items"] isKindOfClass:[NSArray class]]) {
        return data;
    }
    NSArray *items = data[@"items"];
    NSMutableArray *newItems = [NSMutableArray array];
    for (NSDictionary *item in items) {
        NSDictionary *itemHandled = [self handleBizData:item];
        if (itemHandled) {
            [newItems addObject:itemHandled];
        }
    }
    NSMutableDictionary *newData = [NSMutableDictionary dictionaryWithDictionary:data];
    newData[@"items"] = [newItems copy];
    return [newData copy];
}


#pragma mark - Public Methods

#pragma mark - Private Methods

- (NSDictionary *)handleBizData:(NSDictionary *)bizData {
    if (!bizData[@"id"] ||
        ![bizData[@"id"] isKindOfClass:[NSNumber class]]) {
        return bizData;
    }
    NSNumber *bizId = bizData[@"id"];
    if ([self.bizIdWhiteList containsObject:bizId]) {
        return bizData;
    }
    return nil;
}

#pragma mark - Property Methods



@end
