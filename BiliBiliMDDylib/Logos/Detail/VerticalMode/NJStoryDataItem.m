//
//  NJStoryDataItem.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/9.
//

#import "NJStoryDataItem.h"
#import "NJCommonDefine.h"
#import "NJStoryPipeline.h"

@interface NJStoryDataItem ()

/// 流水线
@property (nonatomic, strong) NJStoryPipeline *pipeline;

@end

@implementation NJStoryDataItem

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
    self.pipeline = [[NJStoryPipeline alloc] init];
}

#pragma mark - Override Methods

- (NSString *)url {
    return @"https://app.bilibili.com/x/v2/feed/index/story";
}

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response {
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                   options:NSJSONReadingMutableContainers
                                                     error:&error];
    if ([jsonObject isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *allDataDic = (NSMutableDictionary *)jsonObject;
        if ([allDataDic[@"data"][@"items"] isKindOfClass:[NSMutableArray class]]) {
            NSMutableArray *dataArr = allDataDic[@"data"][@"items"];
            NSArray *dataHandled = [self.pipeline handleData:dataArr];
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


#pragma mark - Property Methods



@end

