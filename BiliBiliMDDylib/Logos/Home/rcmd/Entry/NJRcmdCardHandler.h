//
//  NJRcmdCardHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/4.
//

// 主页-推荐的广告

#import <Foundation/Foundation.h>
#import "NJRcmdCardEntry.h"

NS_ASSUME_NONNULL_BEGIN


@interface NJRcmdCardHandler : NSObject

- (instancetype)init;

/// 数据处理项
- (NSDictionary<NSString *, NJRcmdCardEntry*> *)entryDic;

/// 处理数据
/// - Parameter cardData: 要处理的数据
- (NSDictionary *_Nullable)handleCardData:(NSMutableDictionary *)cardData;

@end

NS_ASSUME_NONNULL_END
