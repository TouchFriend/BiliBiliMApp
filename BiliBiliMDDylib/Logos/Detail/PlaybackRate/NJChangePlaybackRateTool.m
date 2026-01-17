//
//  NJChangePlaybackRateTool.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/10/30.
//

#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"
#import "NJPluginInfo.h"
#import "NJAppCompatibleDefine.h"

static const double NJChangePlaybackRateFlag = 3.0;

@interface NJChangePlaybackRateTool ()

/// 播放速度
@property (nonatomic, strong) NSArray<NSString *> *playbackRates;

@end

@implementation NJChangePlaybackRateTool

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
    self.playbackRates = [[self class] playbackRates];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

/// 播放速度数组
+ (NSArray<NSString *> *)playbackRates {
    NSUInteger count = 0;
    __unsafe_unretained id *cArray = [self playbackRatesCArrayWithCount:&count];
    NSArray<NSString *> *ratesArray = [NSArray arrayWithObjects:cArray count:count];
    return ratesArray;
}

/// 播放速度的c数组
/// - Parameter outCount: 数组长度
/// @return 返回播放速度的c数组
+ (__unsafe_unretained id *)playbackRatesCArrayWithCount:(NSUInteger *)outCount {
    static __unsafe_unretained id newRates[6];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        newRates[0] = @"0.5";
        newRates[1] = @"1.0";
        newRates[2] = @"1.25";
        newRates[3] = @"1.5";
        newRates[4] = @"2.0";
        newRates[5] = @"3.0";
    });
    
    if (outCount) {
        *outCount = sizeof(newRates) / sizeof(newRates[0]);
    }
    
    return newRates;
}

/// 获取当前的播放速度
/// @return 返回旧的播放速度
+ (NSArray<NSString *> *)currentPlaybackRates {
    NSUInteger count = 0;
    __unsafe_unretained id *cArray = [self oldPlaybackRatesCArrayWithCount:&count];
    NSArray<NSString *> *ratesArray = [NSArray arrayWithObjects:cArray count:count];
    return ratesArray;
}

/// 获取旧的播放速度的c数组
/// @param outCount 数组长度
/// @return 返回的播放速度的c数组
+ (__unsafe_unretained id *)oldPlaybackRatesCArrayWithCount:(NSUInteger *)outCount {
    static __unsafe_unretained id newRates[6];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        newRates[0] = @"0.5";
        newRates[1] = @"0.75";
        newRates[2] = @"1.0";
        newRates[3] = @"1.25";
        newRates[4] = @"1.5";
        newRates[5] = @"2.0";
    });
    
    if (outCount) {
        *outCount = sizeof(newRates) / sizeof(newRates[0]);
    }
    
    return newRates;
}


/// 修改播放速度
/// - Parameter rateArray: 旧的的播放速度
/// @return 返回新的播放速度
- (NSArray *)changePlaybackRateWithRateArray:(NSArray *)rateArray {
    if (![self shouldChange:rateArray]) {
        return rateArray;
    }
//    NSLog(@"[%@] change before rateArray = %@, class:%@", nj_logPrefix, rateArray, NSStringFromClass([rateArray class]));
    NSInteger rateCount = rateArray.count;
    NSInteger newRateCount = self.playbackRates.count;
    NSInteger count = MIN(rateCount, newRateCount);
    for (NSInteger i = 0; i < count; i++) {
        BBPlayerPlayerRateModel *rateModel = rateArray[i];
        NSString *newRateStr = self.playbackRates[i];
        rateModel.value = newRateStr.doubleValue;
        rateModel.text = newRateStr;
    }
//    NSLog(@"[%@] change after rateArray = %@, class:%@", nj_logPrefix, rateArray, NSStringFromClass([rateArray class]));
    return rateArray;
}

/// 兼容的系统版本
/// @return 返回兼容的系统版本
+ (NSArray<NSString *> *)compatibleSystemVersions {
    return @[NJ_APP_VERSION_8_41_0, NJ_APP_VERSION_8_76_0];
}

/// 是否兼容当前系统版本
/// @return 返回是否兼容当前系统版本
+ (BOOL)compatibleCurrentSystemVersion {
    NSString *appVersion = [NJPluginInfo appVersion];
    NSArray<NSString *> *compatibleSystemVersions = [self compatibleSystemVersions];
    BOOL flag = [compatibleSystemVersions containsObject:appVersion];
    return flag;
}

#pragma mark - Private Methods

/// 是否需要更改速度
/// - Parameter rateArray: 旧的速度
/// @return 是否需要更改速度
- (BOOL)shouldChange:(NSArray *)rateArray {
    BOOL flag = YES;
    for (BBPlayerPlayerRateModel *item in rateArray) {
        if (item.value == NJChangePlaybackRateFlag) {
            flag = NO;
            break;
        }
    }
    return flag;
}

#pragma mark - Property Methods




@end
