//
//  NJHotTopicCardHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/14.
//

#import <Foundation/Foundation.h>
#import "NJHotTopicCardEntity.h"
#import "BAPIAppCardV1Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJHotTopicCardHandler : NSObject

- (instancetype)init;

/// 数据处理项
- (NSDictionary<NSString *, NJHotTopicCardEntity*> *)entityDic;

/// 处理数据
/// - Parameter cardData: 要处理的数据
- (BAPIAppCardV1Card *_Nullable)handleCardData:(BAPIAppCardV1Card *)cardData;

@end

NS_ASSUME_NONNULL_END
