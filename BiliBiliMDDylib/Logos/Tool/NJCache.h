//
//  NJCache.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import <Foundation/Foundation.h>
#import "YYCache.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJCache : NSObject

/// YYCache
@property (nonatomic, strong) YYCache *cache;

/// 单例
+ (instancetype)sharedInstance;

/// 获取默认播放速度
- (NSString *)defaultPlaybackRate;

/// 获取默认播放速度
- (double)defaultPlaybackRateValue;

/// 保存默认播放速度
- (void)saveDefaultPlaybackRate:(NSString *)rate;

@end

NS_ASSUME_NONNULL_END
