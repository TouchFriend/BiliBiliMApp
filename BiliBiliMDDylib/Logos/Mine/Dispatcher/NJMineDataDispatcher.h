//
//  NJMineDataDispatcher.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/5.
//

#import <Foundation/Foundation.h>
#import "NJMineDataHandler.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJMineDataDispatcher : NSObject

- (instancetype)init;

/// 获取所有处理器
/// @return 返回所有处理器
- (NSDictionary<NSString *, NJMineDataHandler*> *)allHandlerDic;

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)mineData;

/// 处理数据
/// - Parameters:
///   - bizType: 业务类型
///   - bizData: 业务数据
///   @return 处理后的数据
- (NSDictionary *)handleDataForBizType:(NSString *)bizType
                               bizData:(NSDictionary *)bizData;

@end

NS_ASSUME_NONNULL_END
