//
//  NJSearchSquareCardHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/12.
//

#import <Foundation/Foundation.h>
#import "NJSearchSquareCardEntity.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSearchSquareCardHandler : NSObject

- (instancetype)init;

/// 数据处理项
- (NSDictionary<NSString *, NJSearchSquareCardEntity*> *)entityDic;

/// 处理数据
/// - Parameter cardData: 要处理的数据
- (NSDictionary *_Nullable)handleCardData:(NSMutableDictionary *)cardData;

@end

NS_ASSUME_NONNULL_END
