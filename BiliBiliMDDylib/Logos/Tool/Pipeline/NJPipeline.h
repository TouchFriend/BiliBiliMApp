//
//  NJPipeline.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import <Foundation/Foundation.h>
#import "NJPipelineStage.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJPipeline : NSObject

/// 同步执行流水线
/// - Parameters:
///   - input: 要处理的数据
///   - error: 出错时返回 error
///   @return 处理后的数据
- (id)runWithInput:(id)input error:(NSError **)error;

/// 注册流水线阶段
/// @param stage 流水线阶段
- (void)registerStage:(id<NJPipelineStage>)stage;

/// 注册多个流水线阶段
/// @param stages 流水线阶段
- (void)registerStages:(NSArray<id<NJPipelineStage>> *)stages;

/// 删除所有的流水线阶段
- (void)reset;

@end

NS_ASSUME_NONNULL_END
