//
//  NJRcmdCardHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/4.
//

#import "NJRcmdCardHandler.h"
#import "NJRcmdCardEntry.h"
#import "NJRcmdSmallCoverV2Entry.h"
#import "NJRcmdBannerV8Entry.h"
#import "NJRcmdCmV1Entry.h"
#import "NJRcmdCmV2Entry.h"
#import "NJRcmdCmDoubleV9Entry.h"
#import "NJRcmdBannerIPadV8Entry.h"
#import "NJRcmdCmDoubleV7Entry.h"

@interface NJRcmdCardHandler ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *cardEntryClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJRcmdCardEntry*> *cardEntryDic;

@end

@implementation NJRcmdCardHandler

@synthesize cardEntryClasses = _cardEntryClasses;

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
    self.cardEntryDic = [NSMutableDictionary dictionary];
    [self registerEntry];
}

- (void)registerEntry {
    for (Class entryClass in self.cardEntryClasses) {
        NJRcmdCardEntry *entry = [[entryClass alloc] init];
        NSString *cardType = entry.cardType;
        if (cardType.length == 0) {
            continue;
        }
        self.cardEntryDic[cardType] = entry;
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (NSDictionary<NSString *, NJRcmdCardEntry*> *)entryDic {
    return [self.cardEntryDic copy];
}

- (NSDictionary *)handleCardData:(NSMutableDictionary *)cardData {
    NSString *cardType = cardData[@"card_type"];
    if (cardType.length == 0) {
        return cardData;
    }
    NJRcmdCardEntry *cardEntry = self.cardEntryDic[cardType];
    if (!cardEntry) {
        return cardData;
    }
    NSDictionary *dataHandled = [cardEntry handleData:cardData];
    return dataHandled;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class> *)cardEntryClasses {
    if (!_cardEntryClasses) {
        _cardEntryClasses = @[[NJRcmdSmallCoverV2Entry class],      //
                              [NJRcmdBannerV8Entry class],          // banner
                              [NJRcmdBannerIPadV8Entry class],      // iPad banner
                              [NJRcmdCmV1Entry class],              // 小卡片广告
                              [NJRcmdCmV2Entry class],              // 小卡片广告
                              [NJRcmdCmDoubleV9Entry class],        // 大卡片广告
                              [NJRcmdCmDoubleV7Entry class],        // 大卡片广告
        ];
    }
    return _cardEntryClasses;
}


@end
