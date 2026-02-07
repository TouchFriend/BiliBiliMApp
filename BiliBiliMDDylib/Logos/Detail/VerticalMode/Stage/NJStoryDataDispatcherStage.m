//
//  NJStoryDataDispatcherStage.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import "NJStoryDataDispatcherStage.h"
#import "NJStoryDataDispatcher.h"

@interface NJStoryDataDispatcherStage ()

/// 数据分发器
@property (nonatomic, strong) NJStoryDataDispatcher *dataDispatcher;

@end

@implementation NJStoryDataDispatcherStage

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
    self.dataDispatcher = [[NJStoryDataDispatcher alloc] init];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - NJPipelineStage

- (nullable id)processInput:(nullable id)input error:(NSError *__autoreleasing  _Nullable * _Nullable)error {
    if (![input isKindOfClass:[NSDictionary class]]) {
        if (error) {
            *error = [NSError errorWithDomain:@"NJPipelineError"
                                         code:1001
                                     userInfo:@{
                                         NSLocalizedDescriptionKey:
                                             @"Invalid input type"
                                     }];
        }
        return nil;
    }
    
    NSDictionary *bizData = (NSDictionary *)input;
    NSString *bizType = bizData[@"card_goto"];
    NSDictionary *dataHandled = [self.dataDispatcher handleDataForBizType:bizType
                                                                bizData:bizData];
    return dataHandled;
}

#pragma mark - Property Methods

@end
