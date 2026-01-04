//
//  NJTabDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/6.
//

#import "NJTabDataItem.h"
#import "NJCommonDefine.h"
#import "NJTabDataDispatcher.h"

@interface NJTabDataItem ()

/// 数据分发器
@property (nonatomic, strong) NJTabDataDispatcher *dataDispatcher;


@end

@implementation NJTabDataItem

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
    self.dataDispatcher = [[NJTabDataDispatcher alloc] init];
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/resource/show/tab/v2";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"] isKindOfClass:[NSMutableDictionary class]]) {
            NSMutableDictionary *dataDic = allDataDic[@"data"];
            NSDictionary *dataHandled = [self.dataDispatcher handleTabData:dataDic];
            [dataDic removeAllObjects];
            [dataDic addEntriesFromDictionary:dataHandled];
        }
        NSError *serializationError = nil;
        // 序列化为 JSON Data
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:allDataDic
                                                          options:0
                                                            error:&serializationError];
        if (serializationError) {
            NSLog(@"%@:JSON 序列化失败: %@", nj_logPrefix, serializationError.localizedDescription);
        } else {
            data = jsonData;
        }
    }
    return data;
}



#pragma mark - Public Methods

#pragma mark - Private Methods

/// 处理版块数据
/// - Parameter tabData: 版块数据
- (NSDictionary *)handleTabData:(NSMutableDictionary *)tabData {
    NSString *uri = tabData[@"uri"];
    if (!uri || ![uri isKindOfClass:[NSString class]]) {
        return tabData;
    }
    // 活动版块，比如新征程
    if ([uri containsString:@"home_activity_tab"]) {
        return nil;
    }
    return tabData;
}

#pragma mark - Property Methods



@end
