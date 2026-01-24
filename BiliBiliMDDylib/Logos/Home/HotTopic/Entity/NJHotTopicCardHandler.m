//
//  NJHotTopicCardHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/14.
//

#import "NJHotTopicCardHandler.h"
#import "NJHotTopicCardEntity.h"
#import "NJHotTopicRcmdOneItemEntity.h"
#import "NJHotTopicSmallCoverV5Entity.h"
#import "NJHotTopicSmallCoverV5AdEntity.h"

@interface NJHotTopicCardHandler ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *cardEntityClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJHotTopicCardEntity*> *cardEntityDic;

@end

@implementation NJHotTopicCardHandler

@synthesize cardEntityClasses = _cardEntityClasses;

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
    self.cardEntityDic = [NSMutableDictionary dictionary];
    [self registerEntry];
}

- (void)registerEntry {
    for (Class entryClass in self.cardEntityClasses) {
        NJHotTopicCardEntity *entry = [[entryClass alloc] init];
        NSString *cardType = entry.cardType;
        if (cardType.length == 0) {
            continue;
        }
        self.cardEntityDic[cardType] = entry;
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (NSDictionary<NSString *, NJHotTopicCardEntity*> *)entityDic {
    return [self.cardEntityDic copy];
}

- (BAPIAppCardV1Card *)handleCardData:(BAPIAppCardV1Card *)cardData {
    NSString *cardType = [NSString stringWithFormat:@"%d", cardData.itemOneOfCase];
    if (cardType.length == 0) {
        return cardData;
    }
    NJHotTopicCardEntity *cardEntry = self.cardEntityDic[cardType];
    if (!cardEntry) {
        return cardData;
    }
    BAPIAppCardV1Card *dataHandled = [cardEntry handleData:cardData];
    return dataHandled;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class> *)cardEntityClasses {
    if (!_cardEntityClasses) {
        _cardEntityClasses = @[
            [NJHotTopicRcmdOneItemEntity class],    // 推荐一个卡片，rcmd_one_item
            [NJHotTopicSmallCoverV5Entity class],   // 小封面卡片，small_cover_v5
            [NJHotTopicSmallCoverV5AdEntity class], // 小封面卡片广告, small_cover_v5_ad
        ];
    }
    return _cardEntityClasses;
}


@end

