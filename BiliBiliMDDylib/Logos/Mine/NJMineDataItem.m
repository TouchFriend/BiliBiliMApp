//
//  NJMineDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/5.
//

#import "NJMineDataItem.h"
#import "NJCommonDefine.h"
#import "NJMineDataHandler.h"

@interface NJMineDataItem ()

/// 数据处理器
@property (nonatomic, strong) NJMineDataHandler *dataHandler;


@end

@implementation NJMineDataItem

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
    self.dataHandler = [[NJMineDataHandler alloc] init];
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/v2/account/mine";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"][@"sections_v2"] isKindOfClass:[NSMutableArray class]]) {
            NSMutableArray *dataArr = allDataDic[@"data"][@"sections_v2"];
            NSArray *dataHandled = [self.dataHandler handleData:dataArr];
            [dataArr removeAllObjects];
            [dataArr addObjectsFromArray:dataHandled];
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
