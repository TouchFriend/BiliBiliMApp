//
//  NJAppCompatible_8_41_0_Handler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/1.
//

#import "NJAppCompatible_8_41_0_Handler.h"
#import "NJCommonDefine.h"
#import <CydiaSubstrate/CydiaSubstrate.h>
#import "NJChangePlaybackRateTool.h"
#import "NJPlaybackRateWriteMemoryTool.h"
#import "NJAppCompatibleDefine.h"
#import "NJPluginInfo.h"

#ifdef __cplusplus
extern "C" {
#endif

extern void *orig_landscapeVideo_fullScreenPlayback_RateModelArr;
// [横屏视频-全屏播放]播放速度数组
int64_t my_landscapeVideo_fullScreenPlayback_RateModelArr(void);


extern void *orig_get_max_playback_rate;
// 获取最大播放速度方法
double my_get_max_playback_rate(int64_t a1);

#ifdef __cplusplus
}
#endif

@interface NJAppCompatible_8_41_0_Handler ()

/// 写内存工具
@property (nonatomic, strong) NJPlaybackRateWriteMemoryTool *writeMemoryTool;


@end

@implementation NJAppCompatible_8_41_0_Handler

#pragma mark - Life Cycle Methods



#pragma mark - Do Init


#pragma mark - Override Methods

- (void)doInit {
    [super doInit];
    self.writeMemoryTool = [[NJPlaybackRateWriteMemoryTool alloc] init];
}

- (NSString *)version {
    return NJ_APP_VERSION_8_41_0;
}

- (void)handle {
    // 不是插件
    if (![NJPluginInfo isPlugin]) {
        return;
    }
    
    intptr_t aslr = self.aslr;
    
    // 获取最大播放速度方法
    // double __fastcall sub_10F10449C(__int64 a1)
    long long get_max_playback_rate_address = aslr + 0x10F10449C;
    NSLog(@"[%@] cal func get_max_playback_rate address:0x%llx", nj_logPrefix, get_max_playback_rate_address);
    // 地址有效性判断
    if (get_max_playback_rate_address != 0) {
        MSHookFunction((void *)get_max_playback_rate_address,
                       (void*)my_get_max_playback_rate,
                       (void**)&orig_get_max_playback_rate);
    }
    
    // __int64 sub_10D82E870()
    // [横屏视频-全屏播放]播放速度数组
    long long landscapeVideo_fullScreenPlayback_RateModelArr_address = aslr + 0x10D82E870;
    NSLog(@"[%@] cal func landscapeVideo_fullScreenPlayback_RateModelArr_address address:0x%llx", nj_logPrefix, landscapeVideo_fullScreenPlayback_RateModelArr_address);
    // 地址有效性判断
    if (landscapeVideo_fullScreenPlayback_RateModelArr_address != 0) {
        MSHookFunction((void *)landscapeVideo_fullScreenPlayback_RateModelArr_address,
                       (void*)my_landscapeVideo_fullScreenPlayback_RateModelArr,
                       (void**)&orig_landscapeVideo_fullScreenPlayback_RateModelArr);
    }
    
    // [横屏视频-半屏播放]的播放速度
    [self changePlaybackRates_LandscapeVideo_HalfScreenPlayback];
    
    // [竖屏视频-全屏播放-用竖屏模式播放]的播放速度
    [self changePlaybackRates_VerticalVideo_FullScreenPlayback_VerticalModePlayback];
}



#pragma mark - Public Methods

#pragma mark - Private Methods

// [横屏视频-半屏播放]的播放速度
- (void)changePlaybackRates_LandscapeVideo_HalfScreenPlayback {
    /*
     0000000116E60390  30 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  0.5.............
     0000000116E603A0  30 2E 37 35 00 00 00 00  00 00 00 00 00 00 00 E4  0.75............
     0000000116E603B0  31 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.0.............
     0000000116E603C0  31 2E 32 35 00 00 00 00  00 00 00 00 00 00 00 E4  1.25............
     0000000116E603D0  31 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.5.............
     0000000116E603E0  32 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  2.0.............
     */
    uintptr_t baseAddress = self.aslr + 0x116E60390;
    [self.writeMemoryTool write_rate_to_address:baseAddress];
}

// [竖屏视频-全屏播放-用竖屏模式播放]的播放速度
- (void)changePlaybackRates_VerticalVideo_FullScreenPlayback_VerticalModePlayback {
    /*
     0000000116E789A0  30 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  0.5.............
     0000000116E789B0  30 2E 37 35 00 00 00 00  00 00 00 00 00 00 00 E4  0.75............
     0000000116E789C0  31 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.0.............
     0000000116E789D0  31 2E 32 35 00 00 00 00  00 00 00 00 00 00 00 E4  1.25............
     0000000116E789E0  31 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.5.............
     0000000116E789F0  32 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  2.0.............
     */
    uintptr_t baseAddress = self.aslr + 0x116E789A0;
    [self.writeMemoryTool write_rate_to_address:baseAddress];
}

#pragma mark - Property Methods

@end
