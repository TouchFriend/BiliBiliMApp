//
//  NJStoryDataHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJStoryDataHandler : NSObject

/// 业务类型
- (NSString *)bizType;

/// 处理数据
/// - Parameter data: 要处理的数据
/// @return 处理后的数据
- (NSDictionary *)handleData:(NSDictionary *)data;

@end

NS_ASSUME_NONNULL_END
