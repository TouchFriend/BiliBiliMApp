//
//  NJTabDataDispatcher.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/4.
//

#import <Foundation/Foundation.h>
#import "NJTabDataHandler.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJTabDataDispatcher : NSObject

- (instancetype)init;

/// 获取所有处理器
/// @return 返回所有处理器
- (NSDictionary<NSString *, NJTabDataHandler*> *)allHandlerDic;

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSDictionary *)handleTabData:(NSDictionary *)tabData;

/// 处理数据
/// - Parameters:
///   - bizType: 业务类型
///   - bizData: 业务数据
///   @return 处理后的数据
- (NSObject *)handleTabDataForBizType:(NSString *)bizType
                              bizData:(NSObject *)bizData;

@end

NS_ASSUME_NONNULL_END
