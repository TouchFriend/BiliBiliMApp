//
//  NJPipeline.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import "NJPipeline.h"

@interface NJPipeline ()

/// 流水线阶段
@property (nonatomic, strong) NSMutableArray<id<NJPipelineStage>> *stages;

@end

@implementation NJPipeline

/// 初始化流水线
- (instancetype)init {
    self = [super init];
    if (self) {
        _stages = [NSMutableArray array];
    }
    return self;
}

/// 同步执行流水线
/// - Parameters:
///   - input: 要处理的数据
///   - error: 出错时返回 error
///   @return 处理后的数据
- (id)runWithInput:(id)input error:(NSError **)error {
    id currentOutput = input;
    for (id<NJPipelineStage> stage in self.stages) {
        NSError *stageError = nil;
        currentOutput = [stage processInput:currentOutput error:&stageError];
        if (stageError) {
            if (error) {
                *error = stageError;
            }
            return nil; // ❗ 出错即中断
        }
    }
    return currentOutput;
}

/// 注册流水线阶段
/// @param stage 流水线阶段
- (void)registerStage:(id<NJPipelineStage>)stage {
    if (!stage) {
        return;
    }
    // 防止重复注册
    if ([self.stages containsObject:stage]) {
        return;
    }
    [self.stages addObject:stage];
}

/// 注册多个流水线阶段
/// @param stages 流水线阶段
- (void)registerStages:(NSArray<id<NJPipelineStage>> *)stages {
    for (id<NJPipelineStage> stage in stages) {
        [self registerStage:stage];
    }
}

/// 删除所有的流水线阶段
- (void)reset {
    [self.stages removeAllObjects];
}



@end
