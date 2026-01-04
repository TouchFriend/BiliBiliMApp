//
//  NJTabDataDispatcher.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/4.
//

#import "NJTabDataDispatcher.h"
#import "NJTabDataHandler.h"
#import "NJTabDataTabHandler.h"
#import "NJTabDataTopHandler.h"
#import "NJTabDataBottomHandler.h"

@interface NJTabDataDispatcher ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *handlerClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJTabDataHandler*> *handlerDic;

@end

@implementation NJTabDataDispatcher

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
        NJTabDataHandler *handler = [[handlerClass alloc] init];
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
- (NSDictionary<NSString *, NJTabDataHandler*> *)allHandlerDic {
    return [self.handlerDic copy];
}

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSDictionary *)handleTabData:(NSDictionary *)tabData {
    NSMutableDictionary *newTabData = [NSMutableDictionary dictionary];
    for (NSString *bizType in tabData.allKeys) {
        NSObject *bizData = tabData[bizType];
        NSObject *dataHandled = [self handleTabDataForBizType:bizType
                                                      bizData:bizData];
        if (bizType.length > 0 && dataHandled) {
            newTabData[bizType] = dataHandled;
        }
    }
    return [newTabData copy];
}

/// 处理数据
/// - Parameters:
///   - bizType: 业务类型
///   - bizData: 业务数据
///   @return 处理后的数据
- (NSObject *)handleTabDataForBizType:(NSString *)bizType
                              bizData:(NSObject *)bizData {
    if (bizType.length == 0) {
        return bizData;
    }
    NJTabDataHandler *handler = self.handlerDic[bizType];
    if (!handler) {
        return bizData;
    }
    NSObject *dataHandled = [handler handleData:bizData];
    return dataHandled;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class> *)handlerClasses {
    if (!_handlerClasses) {
        _handlerClasses = @[[NJTabDataTabHandler class],    // tab: 版块信息
                            [NJTabDataTopHandler class],    // top: 比如游戏中心、消息
                            [NJTabDataBottomHandler class], // bottom: 底部栏，比如首页、关注
        ];
    }
    return _handlerClasses;
}


@end

