//
//  NJStoryDataDispatcher.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/9.
//

#import <Foundation/Foundation.h>
#import "NJStoryDataHandler.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJStoryDataDispatcher : NSObject

- (instancetype)init;

/// 获取所有处理器
/// @return 返回所有处理器
- (NSDictionary<NSString *, NJStoryDataHandler*> *)allHandlerDic;

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)storyData;

/// 处理数据
/// - Parameters:
///   - bizType: 业务类型
///   - bizData: 业务数据
///   @return 处理后的数据
- (NSDictionary *)handleDataForBizType:(NSString *)bizType
                               bizData:(NSDictionary *)bizData;

@end

NS_ASSUME_NONNULL_END
