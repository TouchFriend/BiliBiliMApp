//
//  NJLiveIndexFeedCardHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/9.
//

#import "NJLiveIndexFeedCardHandler.h"
#import "NJLiveIndexFeedCardEntity.h"
#import "NJLiveIndexFeedBannerEntity.h"

@interface NJLiveIndexFeedCardHandler ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *cardEntityClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJLiveIndexFeedCardEntity*> *cardEntityDic;

@end

@implementation NJLiveIndexFeedCardHandler

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
        NJLiveIndexFeedCardEntity *entry = [[entryClass alloc] init];
        NSString *cardType = entry.cardType;
        if (cardType.length == 0) {
            continue;
        }
        self.cardEntityDic[cardType] = entry;
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (NSDictionary<NSString *, NJLiveIndexFeedCardEntity*> *)entityDic {
    return [self.cardEntityDic copy];
}

- (NSDictionary *)handleCardData:(NSMutableDictionary *)cardData {
    NSString *cardType = cardData[@"card_type"];
    if (cardType.length == 0) {
        return cardData;
    }
    NJLiveIndexFeedCardEntity *cardEntry = self.cardEntityDic[cardType];
    if (!cardEntry) {
        return cardData;
    }
    NSDictionary *dataHandled = [cardEntry handleData:cardData];
    return dataHandled;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class> *)cardEntityClasses {
    if (!_cardEntityClasses) {
        _cardEntityClasses = @[[NJLiveIndexFeedBannerEntity class], // banner
        ];
    }
    return _cardEntityClasses;
}


@end

