//
//  NJHotTopicCardEntity.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/14.
//

#import <Foundation/Foundation.h>
#import "BAPIAppCardV1Card.h"


NS_ASSUME_NONNULL_BEGIN

@interface NJHotTopicCardEntity : NSObject

/// 卡片类型
- (NSString *)cardType;

/// 处理数据
/// - Parameter data: 要处理的数据
- (BAPIAppCardV1Card *_Nullable)handleData:(BAPIAppCardV1Card *)data;

@end

NS_ASSUME_NONNULL_END
