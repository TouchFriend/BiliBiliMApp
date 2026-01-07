//
//  NJDiskCacheManager.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/11.
//

#import "NJDiskCacheManager.h"

@interface NJDiskCacheManager ()

/// 首页缓存
@property (nonatomic, strong, readwrite) NJDiskCache *homeCache;


@end

@implementation NJDiskCacheManager


#pragma mark - Life Cycle Methods

NJ_SINGLETON_M(Manager)

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    self.homeCache = [[NJDiskCache alloc] initWithMaxFileCount:15
                                                    filePrefix:@"HomeData"
                                                    folderName:@"HomeCache"];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

#pragma mark - Private Methods

#pragma mark - Property Methods

@end
