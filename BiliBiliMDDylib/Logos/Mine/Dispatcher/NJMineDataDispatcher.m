//
//  NJMineDataDispatcher.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/5.
//

#import "NJMineDataDispatcher.h"
#import "NJMineDataHandler.h"
#import "NJMineCreativeCenterHandler.h"
#import "NJMineMyServicesHandler.h"
#import "NJMineMoreServicesHandler.h"

@interface NJMineDataDispatcher ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *handlerClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJMineDataHandler*> *handlerDic;

@end

@implementation NJMineDataDispatcher

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
        NJMineDataHandler *handler = [[handlerClass alloc] init];
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
- (NSDictionary<NSString *, NJMineDataHandler*> *)allHandlerDic {
    return [self.handlerDic copy];
}

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)mineData {
    NSMutableArray *newMineData = [NSMutableArray array];
    for (NSDictionary *bizData in mineData) {
        NSString *bizType = bizData[@"title"];
        NSDictionary *dataHandled = [self handleDataForBizType:bizType
                                                       bizData:bizData];
        if (dataHandled) {
            [newMineData addObject:dataHandled];
        }
    }
    return [newMineData copy];
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
    NJMineDataHandler *handler = self.handlerDic[bizType];
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
        _handlerClasses = @[[NJMineCreativeCenterHandler class],    // 创作中心
                            [NJMineMyServicesHandler class],        // 我的服务
                            [NJMineMoreServicesHandler class],      // 更多服务
        ];
    }
    return _handlerClasses;
}


@end
