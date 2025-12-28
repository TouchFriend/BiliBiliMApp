
#import <UIKit/UIKit.h>
#include <mach-o/dyld.h>
#import <CydiaSubstrate/CydiaSubstrate.h>
#import <dlfcn.h>
#import "BBPlayerPlayerRateModel.h"
#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"
#import "BBPlayerObject.h"
#import "NJPluginInfo.h"


// 播放速度-目标固定16字节数据块
const size_t NJ_RATE_BLOCK_SIZE = 16;

%group App

/// 视频播放器
@interface IJKFFMoviePlayerControllerFFPlay : NSObject

@property (readonly, nonatomic) float realPlaybackRate;
@property (readonly, nonatomic) float maxPlaybackRate;
@property (nonatomic) float playbackRate;

@end

%hook IJKFFMoviePlayerControllerFFPlay

- (void)setPlaybackRate:(float)playbackRate {
    %orig;
//    NSLog(@"%@:%@-%p-%s-inputPlaybackRate:%lf-changedPlaybackRate:%lf-realPlaybackRate%lf-maxPlaybackRate:%lf", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, playbackRate, self.playbackRate, self.realPlaybackRate, self.maxPlaybackRate);
}

%end

// 播放速度模型
%hook BBPlayerPlayerRateModel

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p; value = %f; text = %@>",
            NSStringFromClass([self class]),
            self,
            self.value,
            self.text ?: @"(null)"];
}

%end

@interface VKSettingViewSelectModel : NSObject // (Swift)

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSArray *items;
@property (nonatomic, strong) NSNumber *nj_isChangeFlag;

@end

// [竖屏视频-全屏播放]的播放速度
%hook NSArray

+ (instancetype)arrayWithObjects:(id *)objects count:(NSUInteger)cnt {
    if (cnt != 6) {
        return %orig;
    }
    NSArray *origArr = %orig(objects, cnt);
    
    NSUInteger oldRatesCount = 0;
    __unsafe_unretained id *oldRates = [NJChangePlaybackRateTool oldPlaybackRatesCArrayWithCount:&oldRatesCount];
    __autoreleasing id oldRatesCopy[oldRatesCount];
    for (NSUInteger i = 0; i < oldRatesCount; i++) {
        oldRatesCopy[i] = oldRates[i];
    }
    // 传数组名即可，数组名会退化为指针类型 __autoreleasing id *
    NSArray *oldRatesArr = %orig(oldRatesCopy, oldRatesCount);
    if (cnt == 6 && [origArr isEqualToArray:oldRatesArr]) {
        NSUInteger newRatesCount = 0;
        __unsafe_unretained id *newRates = [NJChangePlaybackRateTool playbackRatesCArrayWithCount:&newRatesCount];
        __autoreleasing id newRatesCopy[newRatesCount];
        for (NSUInteger i = 0; i < newRatesCount; i++) {
            newRatesCopy[i] = newRates[i];
        }
        NSArray *newRatesArr = %orig(newRatesCopy, newRatesCount);
        return newRatesArr;
    }
    return origArr;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE && [NJChangePlaybackRateTool compatibleCurrentSystemVersion]) {
        %init(App, VKSettingViewSelectModel = objc_getClass("_TtC13VKSettingView11SelectModel"));
    }
}


#ifdef __cplusplus
extern "C" {
#endif

void *orig_landscapeVideo_fullScreenPlayback_RateModelArr;
// [横屏视频-全屏播放]播放速度数组
int64_t my_landscapeVideo_fullScreenPlayback_RateModelArr();


void *orig_get_max_playback_rate;
// 获取最大播放速度方法
double my_get_max_playback_rate(int64_t a1);

#ifdef __cplusplus
}
#endif


// ASLR的偏移量
intptr_t g_slide;

//保存模块偏移基地址的值
static void _register_func_for_add_image(const struct mach_header *header, intptr_t slide) {
    Dl_info image_info;
    int result = dladdr(header, &image_info);
    if (result == 0) {
        NSLog(@"[%@] load mach_header failed", nj_logPrefix);
        return;
    }
    //获取当前的可执行文件路径
    NSString *execName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleExecutable"];
    NSString *execPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingFormat:@"/%@", execName];
    if (strcmp([execPath UTF8String], image_info.dli_fname) == 0) {
        g_slide = slide;
        NSLog(@"[%@] g_slide:0x%lx", nj_logPrefix, g_slide);
    }
    
    //如果需要获取可执行文件中引入的某一个模块(如你加入的XXX.dylib)在内存中的偏移量
    //则需要判断image_info.dli_fname中是否h包含字符串XXX.dylib
    // NSString *fname = [NSString stringWithUTF8String:image_info.dli_fname];
    // if ([fname containsString:@"NJHookSwiftProject.debug.dylib"]) {
    //     g_slide = slide;
    //     NSLog(@"[cxzcxz] g_slide:%ld", g_slide);
    // }
}


/// 将速度写入到内存地址
/// - Parameters:
///   - dest_addr: 目标内存地址
///   - str: 速度字符串，比如"1.0"
static int write_rate_string_to_address(uintptr_t dest_addr, NSString *str) {
    if (str == nil) {
        return -1;
    }
    // 地址有效性判断
    if (dest_addr == 0) {
        return -1;
    }

    // UTF8 字符串
    const char *utf8Str = [str UTF8String];
    size_t strLength = strlen(utf8Str);   // 字符数（不含 \0）

    if (strLength > (NJ_RATE_BLOCK_SIZE - 1)) {
        // 只能容纳前15字节 + 最后一字节用于 E0+strLength
        strLength = NJ_RATE_BLOCK_SIZE - 1;
    }

    uint8_t block[NJ_RATE_BLOCK_SIZE];
    memset(block, 0, NJ_RATE_BLOCK_SIZE);

    // 前 strLength 字节写入字符串
    memcpy(block, utf8Str, strLength);

    // 最后一个字节写入：E0 + 长度
    block[NJ_RATE_BLOCK_SIZE - 1] = 0xE0 + (uint8_t)strLength;

    // 将 block 写到目标地址
    memcpy((void *)dest_addr, block, NJ_RATE_BLOCK_SIZE);

    return 0;
}


/// 将速度写入到内存地址
/// - Parameter baseAddress: 起始内存地址
static void write_rate_to_address(uintptr_t baseAddress) {
    NSArray<NSString *> *playbackRates = [NJChangePlaybackRateTool playbackRates];
    NSInteger count = playbackRates.count;
    for (NSInteger i = 0; i < count; i++) {
        uintptr_t currentAddress = baseAddress + i * NJ_RATE_BLOCK_SIZE;
        write_rate_string_to_address(currentAddress, playbackRates[i]);
    }
}

// [横屏视频-半屏播放]的播放速度
static void changePlaybackRates_LandscapeVideo_HalfScreenPlayback() {
    /*
     0000000116E60390  30 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  0.5.............
     0000000116E603A0  30 2E 37 35 00 00 00 00  00 00 00 00 00 00 00 E4  0.75............
     0000000116E603B0  31 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.0.............
     0000000116E603C0  31 2E 32 35 00 00 00 00  00 00 00 00 00 00 00 E4  1.25............
     0000000116E603D0  31 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.5.............
     0000000116E603E0  32 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  2.0.............
     */
    uintptr_t baseAddress = g_slide + 0x116E60390;
    write_rate_to_address(baseAddress);
}

// [竖屏视频-全屏播放-用竖屏模式播放]的播放速度
static void changePlaybackRates_VerticalVideo_FullScreenPlayback_VerticalModePlayback() {
    /*
     0000000116E789A0  30 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  0.5.............
     0000000116E789B0  30 2E 37 35 00 00 00 00  00 00 00 00 00 00 00 E4  0.75............
     0000000116E789C0  31 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.0.............
     0000000116E789D0  31 2E 32 35 00 00 00 00  00 00 00 00 00 00 00 E4  1.25............
     0000000116E789E0  31 2E 35 00 00 00 00 00  00 00 00 00 00 00 00 E3  1.5.............
     0000000116E789F0  32 2E 30 00 00 00 00 00  00 00 00 00 00 00 00 E3  2.0.............
     */
    uintptr_t baseAddress = g_slide + 0x116E789A0;
    write_rate_to_address(baseAddress);
}

__attribute__((constructor)) static void __init__(void) {
    _dyld_register_func_for_add_image(_register_func_for_add_image);
    
    if (![NJChangePlaybackRateTool compatibleCurrentSystemVersion] ||
        ![NJPluginInfo isPlugin]) {
        return;
    }
    
    // 获取最大播放速度方法
    long long get_max_playback_rate_address = g_slide + 0x10F10449C;
    NSLog(@"[%@] cal func get_max_playback_rate address:0x%llx", nj_logPrefix, get_max_playback_rate_address);
    // 地址有效性判断
    if (get_max_playback_rate_address != 0) {
        MSHookFunction((void *)get_max_playback_rate_address,
                       (void*)my_get_max_playback_rate,
                       (void**)&orig_get_max_playback_rate);
    }
    
    // __int64 sub_10D82E870()
    // [横屏视频-全屏播放]播放速度数组
    long long landscapeVideo_fullScreenPlayback_RateModelArr_address = g_slide + 0x10D82E870;
    NSLog(@"[%@] cal func landscapeVideo_fullScreenPlayback_RateModelArr_address address:0x%llx", nj_logPrefix, landscapeVideo_fullScreenPlayback_RateModelArr_address);
    // 地址有效性判断
    if (landscapeVideo_fullScreenPlayback_RateModelArr_address != 0) {
        MSHookFunction((void *)landscapeVideo_fullScreenPlayback_RateModelArr_address,
                       (void*)my_landscapeVideo_fullScreenPlayback_RateModelArr,
                       (void**)&orig_landscapeVideo_fullScreenPlayback_RateModelArr);
    }
    
    // [横屏视频-半屏播放]的播放速度
    changePlaybackRates_LandscapeVideo_HalfScreenPlayback();
    
    // [竖屏视频-全屏播放-用竖屏模式播放]的播放速度
    changePlaybackRates_VerticalVideo_FullScreenPlayback_VerticalModePlayback();
}




