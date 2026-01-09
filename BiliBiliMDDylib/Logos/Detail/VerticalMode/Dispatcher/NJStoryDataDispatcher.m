//
//  NJStoryDataDispatcher.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/9.
//

#import "NJStoryDataDispatcher.h"
#import "NJStoryDataHandler.h"
#import "NJStoryVerticalAdAvHandler.h"
#import "NJStoryVerticalLiveHandler.h"
#import "NJStoryVerticalAdLiveHandler.h"

@interface NJStoryDataDispatcher ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *handlerClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJStoryDataHandler*> *handlerDic;

@end

@implementation NJStoryDataDispatcher

@synthesize handlerClasses = _handlerClasses;

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
    self.handlerDic = [NSMutableDictionary dictionary];
    [self registerHandler];
}

- (void)registerHandler {
    for (Class handlerClass in self.handlerClasses) {
        NJStoryDataHandler *handler = [[handlerClass alloc] init];
        NSString *bizType = handler.bizType;
        if (bizType.length == 0) {
            continue;
        }
        self.handlerDic[bizType] = handler;
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

/// 获取所有处理器
/// @return 返回所有处理器
- (NSDictionary<NSString *, NJStoryDataHandler*> *)allHandlerDic {
    return [self.handlerDic copy];
}

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)storyData {
    NSMutableArray *newStoryData = [NSMutableArray array];
    for (NSDictionary *bizData in storyData) {
        NSString *bizType = bizData[@"card_goto"];
        NSDictionary *dataHandled = [self handleDataForBizType:bizType
                                                       bizData:bizData];
        if (dataHandled) {
            [newStoryData addObject:dataHandled];
        }
    }
    return [newStoryData copy];
}

/// 处理数据
/// - Parameters:
///   - bizType: 业务类型
///   - bizData: 业务数据
///   @return 处理后的数据
- (NSDictionary *)handleDataForBizType:(NSString *)bizType
                               bizData:(NSDictionary *)bizData {
    if (bizType.length == 0) {
        return bizData;
    }
    NJStoryDataHandler *handler = self.handlerDic[bizType];
    if (!handler) {
        return bizData;
    }
    NSDictionary *dataHandled = [handler handleData:bizData];
    return dataHandled;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class> *)handlerClasses {
    if (!_handlerClasses) {
        _handlerClasses = @[[NJStoryVerticalAdAvHandler class],     // 广告视频
                            [NJStoryVerticalLiveHandler class],     // 直播
                            [NJStoryVerticalAdLiveHandler class],   // 广告直播
        ];
    }
    return _handlerClasses;
}


@end
