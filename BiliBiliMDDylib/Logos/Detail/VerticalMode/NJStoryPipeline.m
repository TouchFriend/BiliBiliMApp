//
//  NJStoryPipeline.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import "NJStoryPipeline.h"
#import "NJPipelineStage.h"
#import "NJStoryCreativeEntranceStage.h"
#import "NJStoryScrollGuideStage.h"
#import "NJCommonDefine.h"
#import "NJStoryDataDispatcherStage.h"

@interface NJStoryPipeline ()

/// 需要注册的类
@property (nonatomic, strong) NSArray<Class<NJPipelineStage>> *stageClasses;

@end

@implementation NJStoryPipeline

#pragma mark - Life Cycle Methods

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    [self registerStages];
}

- (void)registerStages {
    for (Class<NJPipelineStage> stageClass in self.stageClasses) {
        id<NJPipelineStage> stage = [[stageClass alloc] init];
        [self registerStage:stage];
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)storyData {
    NSMutableArray *newStoryData = [NSMutableArray array];
    for (NSDictionary *bizData in storyData) {
        NSError *error = nil;
        NSDictionary *dataHandled = [self runWithInput:bizData error:&error];
        if (error) {
            NSLog(@"%@:%@-%p-%s-error:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, error);
            continue;
        }
        if (dataHandled) {
            [newStoryData addObject:dataHandled];
        }
    }
    return [newStoryData copy];
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class<NJPipelineStage>> *)stageClasses {
    if (!_stageClasses) {
        _stageClasses = @[[NJStoryDataDispatcherStage class],       // 数据分发器
                          [NJStoryCreativeEntranceStage class],     // 搜索框
                          [NJStoryScrollGuideStage class],          // 上滑提示
        ];
    }
    return _stageClasses;
}

@end
