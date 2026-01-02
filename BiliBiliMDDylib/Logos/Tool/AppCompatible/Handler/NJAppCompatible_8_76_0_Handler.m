//
//  NJAppCompatible_8_76_0_Handler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/1.
//

#import "NJAppCompatible_8_76_0_Handler.h"
#import "NJCommonDefine.h"
#import <CydiaSubstrate/CydiaSubstrate.h>
#import "NJChangePlaybackRateTool.h"
#import "NJPlaybackRateWriteMemoryTool.h"
#import "NJAppCompatibleDefine.h"
#import "NJPluginInfo.h"
#import "NJChangePlaybackRateDefine.h"

@interface NJAppCompatible_8_76_0_Handler ()

/// 写内存工具
@property (nonatomic, strong) NJPlaybackRateWriteMemoryTool *writeMemoryTool;


@end

@implementation NJAppCompatible_8_76_0_Handler

#pragma mark - Life Cycle Methods



#pragma mark - Do Init


#pragma mark - Override Methods

- (void)doInit {
    [super doInit];
    self.writeMemoryTool = [[NJPlaybackRateWriteMemoryTool alloc] init];
}

- (NSString *)version {
    return NJ_APP_VERSION_8_76_0;
}

- (void)handle {
    // 不是插件
    if (![NJPluginInfo isPlugin]) {
        return;
    }
    
    intptr_t aslr = self.aslr;
    
    // 获取最大播放速度方法
    // double __fastcall sub_114699400(__int64 a1)
    long long get_max_playback_rate_address = aslr + 0x114699400;
    NSLog(@"[%@] cal func get_max_playback_rate address:0x%llx", nj_logPrefix, get_max_playback_rate_address);
    // 地址有效性判断
    if (get_max_playback_rate_address != 0) {
        orig_get_max_playback_rate_type origGetMaxRate = NULL;
        MSHookFunction((void *)get_max_playback_rate_address,
                       (void*)my_get_max_playback_rate,
                       (void**)&origGetMaxRate);
        // 把 orig 传给 Swift
        set_orig_get_max_playback_rate(origGetMaxRate);
    }
    
    // __int64 sub_10481EDA4()
    // [横屏视频-全屏播放]播放速度数组
    long long landscapeVideo_fullScreenPlayback_RateModelArr_address = aslr + 0x10481EDA4;
    NSLog(@"[%@] cal func landscapeVideo_fullScreenPlayback_RateModelArr_address address:0x%llx", nj_logPrefix, landscapeVideo_fullScreenPlayback_RateModelArr_address);
    // 地址有效性判断
    if (landscapeVideo_fullScreenPlayback_RateModelArr_address != 0) {
        orig_landscapeVideo_fullScreenPlayback_RateModelArr_type origArr = NULL;
        MSHookFunction((void *)landscapeVideo_fullScreenPlayback_RateModelArr_address,
                       (void*)my_landscapeVideo_fullScreenPlayback_RateModelArr,
                       (void**)&origArr);
        set_orig_landscapeVideo_fullScreenPlayback_RateModelArr(origArr);
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
     000000011E6ACA90  0C 00 00 00 00 00 00 00  30 2E 35 00 00 00 00 00  ........0.5.....
     000000011E6ACAA0  00 00 00 00 00 00 00 E3  30 2E 37 35 00 00 00 00  ..........75....
     000000011E6ACAB0  00 00 00 00 00 00 00 E4  31 2E 30 00 00 00 00 00  ..........0.....
     000000011E6ACAC0  00 00 00 00 00 00 00 E3  31 2E 32 35 00 00 00 00  ..........25....
     000000011E6ACAD0  00 00 00 00 00 00 00 E4  31 2E 35 00 00 00 00 00  ..........5.....
     000000011E6ACAE0  00 00 00 00 00 00 00 E3  32 2E 30 00 00 00 00 00  ..........0.....
     000000011E6ACAF0  00 00 00 00 00 00 00 E3  00 00 00 00 00 00 00 00  ................
     */
    uintptr_t baseAddress = self.aslr + 0x11E6ACA98;
    [self.writeMemoryTool write_rate_to_address:baseAddress];
}

// [竖屏视频-全屏播放-用竖屏模式播放]的播放速度
- (void)changePlaybackRates_VerticalVideo_FullScreenPlayback_VerticalModePlayback {
    /*
     000000011E65FA00  30 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  0.5.............
     000000011E65FA10  30 2E 37 35 00 00 00 00  00 00 00 00 00 00 00 E4  0.75............
     000000011E65FA20  31 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.0.............
     000000011E65FA30  31 2E 32 35 00 00 00 00  00 00 00 00 00 00 00 E4  1.25............
     000000011E65FA40  31 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.5.............
     000000011E65FA50  32 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  2.0.............
     */
    uintptr_t baseAddress = self.aslr + 0x11E65FA00;
    [self.writeMemoryTool write_rate_to_address:baseAddress];
}

#pragma mark - Property Methods

@end

