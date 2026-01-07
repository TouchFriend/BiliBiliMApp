//
//  NJMineDataHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/5.
//

#import "NJMineDataHandler.h"

@interface NJMineDataHandler ()

/// 业务id白名单
@property (nonatomic, strong) NSSet<NSNumber *> *bizIdWhiteList;


@end

@implementation NJMineDataHandler

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
    self.bizIdWhiteList = [[NSSet alloc] initWithObjects:@(396),     // 离线缓存
                                                         @(397),     // 历史记录
                                                         @(3072),    // 我的收藏
                                                         @(2830),    // 稍后再看
                                                         @(407),     // 联系客服
                                                         @(410),     // 设置
                                                         nil
    ];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)mineData {
    NSMutableArray *newMineData = [NSMutableArray array];
    for (NSDictionary *bizData in mineData) {
        NSDictionary *dataHandled = [self handleSectionData:bizData];
        if (dataHandled) {
            [newMineData addObject:dataHandled];
        }
    }
    return [newMineData copy];
}

#pragma mark - Private Methods

/// 处理分组数据
/// @param sectionData 分组数据
/// @return 处理后的分组数据
- (NSDictionary *)handleSectionData:(NSDictionary *)sectionData {
    if (!sectionData[@"items"] ||
        ![sectionData[@"items"] isKindOfClass:[NSArray class]]) {
        return sectionData;
    }
    NSArray *items = sectionData[@"items"];
    NSMutableArray *newItems = [NSMutableArray array];
    for (NSDictionary *item in items) {
        NSDictionary *itemHandled = [self handleItemData:item];
        if (itemHandled) {
            [newItems addObject:itemHandled];
        }
    }
    if (newItems.count == 0) {
        return nil;
    }
    NSMutableDictionary *newSectionData = [NSMutableDictionary dictionaryWithDictionary:sectionData];
    newSectionData[@"items"] = [newItems copy];
    return [newSectionData copy];
}


/// 处理项目数据
/// @param itemData 项目数据
/// @return 处理后的项目数据
- (NSDictionary *)handleItemData:(NSDictionary *)itemData {
    if (!itemData[@"id"] ||
        ![itemData[@"id"] isKindOfClass:[NSNumber class]]) {
        return itemData;
    }
    NSNumber *bizId = itemData[@"id"];
    if ([self.bizIdWhiteList containsObject:bizId]) {
        return itemData;
    }
    return nil;
}

#pragma mark - Property Methods



@end
