//
//  NJLiveIndexFeedCardEntity.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJLiveIndexFeedCardEntity : NSObject

/// 卡片类型
- (NSString *)cardType;

/// 处理数据
/// - Parameter data: 要处理的数据
- (NSDictionary *_Nullable)handleData:(NSMutableDictionary *)data;

@end

NS_ASSUME_NONNULL_END
