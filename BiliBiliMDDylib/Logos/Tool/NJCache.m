//
//  NJCache.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import "NJCache.h"

/// 默认播放速度
#define NJ_SETTING_DEFAULT_PLAYBACK_RATE_KEY @"SETTING_DEFAULT_PLAYBACK_RATE"
#define NJ_SETTING_DEFAULT_PLAYBACK_RATE_VALUE @"1.0"
/// 关注的默认版块
#define NJ_SETTING_FOLLOW_DEFAULT_TAB_KEY @"SETTING_FOLLOW_DEFAULT_TAB"
#define NJ_SETTING_FOLLOW_DEFAULT_TAB_VALUE @"all"

@implementation NJCache

#pragma mark - Life Cycle Methods

+ (instancetype)sharedInstance {
    static NJCache *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[NJCache alloc] init];
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
    YYCache *cache = [[NSClassFromString(@"YYCache") alloc] initWithName:@"NJCache"];
    cache.memoryCache.costLimit = 50 * 1024 * 1024; // 50MB
    cache.memoryCache.countLimit = 1000;            // 最多 1000 个对象
    cache.diskCache.costLimit = 400 * 1024 * 1024;  // 400MB
    self.cache = cache;
}


#pragma mark - Override Methods

#pragma mark - Public Methods

#pragma mark 默认播放速度

/// 获取默认播放速度
- (NSString *)defaultPlaybackRate {
    NSString *rate = (NSString *)[self.cache objectForKey:NJ_SETTING_DEFAULT_PLAYBACK_RATE_KEY];
    // 使用默认值
    if (rate.length == 0) {
        rate = NJ_SETTING_DEFAULT_PLAYBACK_RATE_VALUE;
        // 保存
        [self.cache setObject:rate forKey:NJ_SETTING_DEFAULT_PLAYBACK_RATE_KEY];
    }
    return rate;
}

/// 获取默认播放速度
- (double)defaultPlaybackRateValue {
    return [[self defaultPlaybackRate] doubleValue];
}

/// 保存默认播放速度
- (void)saveDefaultPlaybackRate:(NSString *)rate {
    [self.cache setObject:rate
                   forKey:NJ_SETTING_DEFAULT_PLAYBACK_RATE_KEY
                withBlock:nil];
}

#pragma mark 关注的默认版块

/// 关注的默认版块
- (NSString *)followDefaultTab {
    NSString *tab = (NSString *)[self.cache objectForKey:NJ_SETTING_FOLLOW_DEFAULT_TAB_KEY];
    // 使用默认值
    if (tab.length == 0) {
        tab = NJ_SETTING_FOLLOW_DEFAULT_TAB_VALUE;
        // 保存
        [self.cache setObject:tab forKey:NJ_SETTING_FOLLOW_DEFAULT_TAB_KEY];
    }
    return tab;
}

/// 保存关注的默认版块
- (void)saveFollowDefaultTab:(NSString *)tab {
    [self.cache setObject:tab
                   forKey:NJ_SETTING_FOLLOW_DEFAULT_TAB_KEY
                withBlock:nil];
}

#pragma mark - Private Methods

#pragma mark - Property Methods
@end
