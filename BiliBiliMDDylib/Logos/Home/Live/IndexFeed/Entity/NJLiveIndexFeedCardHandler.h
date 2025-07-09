//
//  NJLiveIndexFeedCardHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/9.
//

#import <Foundation/Foundation.h>
#import "NJLiveIndexFeedCardEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJLiveIndexFeedCardHandler : NSObject

- (instancetype)init;

/// 数据处理项
- (NSDictionary<NSString *, NJLiveIndexFeedCardEntity*> *)entityDic;

/// 处理数据
/// - Parameter cardData: 要处理的数据
- (NSDictionary *_Nullable)handleCardData:(NSMutableDictionary *)cardData;

@end

NS_ASSUME_NONNULL_END
