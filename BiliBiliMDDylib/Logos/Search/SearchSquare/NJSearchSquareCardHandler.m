//
//  NJSearchSquareCardHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/12.
//

#import "NJSearchSquareCardHandler.h"
#import "NJSearchSquareCardEntity.h"
#import "NJSearchSquareRecommendEntity.h"

@interface NJSearchSquareCardHandler ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *cardEntityClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJSearchSquareCardEntity*> *cardEntityDic;

@end

@implementation NJSearchSquareCardHandler

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
        NJSearchSquareCardEntity *entry = [[entryClass alloc] init];
        NSString *cardType = entry.cardType;
        if (cardType.length == 0) {
            continue;
        }
        self.cardEntityDic[cardType] = entry;
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (NSDictionary<NSString *, NJSearchSquareCardEntity*> *)entityDic {
    return [self.cardEntityDic copy];
}

- (NSDictionary *)handleCardData:(NSMutableDictionary *)cardData {
    NSString *cardType = cardData[@"type"];
    if (cardType.length == 0) {
        return cardData;
    }
    NJSearchSquareCardEntity *cardEntry = self.cardEntityDic[cardType];
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
        _cardEntityClasses = @[[NJSearchSquareRecommendEntity class],   // 搜索发现
        ];
    }
    return _cardEntityClasses;
}


@end

