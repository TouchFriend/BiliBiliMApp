//
//  NJApiDataManger.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/3.
//

#import "NJApiDataManger.h"
#import "NJApiDataItem.h"
#import "NSURL+NJPath.h"
#import "NJApiDataItem.h"
#import "NJRcmdCardDataItem.h"

@interface NJApiDataManger ()

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *itemClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJApiDataItem*> *itemDic;


@end

@implementation NJApiDataManger

@synthesize itemClasses = _itemClasses;

#pragma mark - Life Cycle Methods

+ (instancetype)sharedInstance {
    static NJApiDataManger *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[NJApiDataManger alloc] init];
    });
    return _sharedInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}



#pragma mark - Do Init

- (void)doInit {
    self.itemDic = [NSMutableDictionary dictionary];
    [self registerItems];
}

- (void)registerItems {
    for (Class itemClass in self.itemClasses) {
        NJApiDataItem *item = [[itemClass alloc] init];
        NSString *urlStr = item.url;
        if (urlStr.length == 0) {
            continue;
        }
        self.itemDic[urlStr] = item;
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response
                     error:(NSError *)error {
    if (error) {
        return data;
    }
    NSString *urlStr = response.URL.nj_fullPath;
    if (urlStr.length == 0) {
        return data;
    }
    NJApiDataItem *item = self.itemDic[urlStr];
    if (!item) {
        return data;
    }
    NSData *dataHandled = [item handleWithData:data
                                      response:response];
    return dataHandled;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class> *)itemClasses {
    if (!_itemClasses) {
        _itemClasses = @[[NJRcmdCardDataItem class]];
    }
    return _itemClasses;
}


@end
