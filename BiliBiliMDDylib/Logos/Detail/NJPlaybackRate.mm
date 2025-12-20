#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJPlaybackRate.xm"

#import <UIKit/UIKit.h>
#include <mach-o/dyld.h>
#import <CydiaSubstrate/CydiaSubstrate.h>
#import <dlfcn.h>
#import "BBPlayerPlayerRateModel.h"
#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"
#import "BBPlayerObject.h"
#import "NJPluginInfo.h"



const size_t NJ_RATE_BLOCK_SIZE = 16;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BBPlayerPlayerRateModel; @class NSArray; @class IJKFFMoviePlayerControllerFFPlay; 


#line 16 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/NJPlaybackRate.xm"
static void (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$)(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static NSString * (*_logos_orig$App$BBPlayerPlayerRateModel$description)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BBPlayerPlayerRateModel$description(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSArray* (*_logos_meta_orig$App$NSArray$arrayWithObjects$count$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); static NSArray* _logos_meta_method$App$NSArray$arrayWithObjects$count$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); 


@interface IJKFFMoviePlayerControllerFFPlay : NSObject

@property (readonly, nonatomic) float realPlaybackRate;
@property (readonly, nonatomic) float maxPlaybackRate;
@property (nonatomic) float playbackRate;

@end



static void _logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float playbackRate) {
    _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(self, _cmd, playbackRate);

}






static NSString * _logos_method$App$BBPlayerPlayerRateModel$description(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [NSString stringWithFormat:@"<%@: %p; value = %f; text = %@>",
            NSStringFromClass([self class]),
            self,
            self.value,
            self.text ?: @"(null)"];
}



@interface VKSettingViewSelectModel : NSObject 

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSArray *items;
@property (nonatomic, strong) NSNumber *nj_isChangeFlag;

@end




static NSArray* _logos_meta_method$App$NSArray$arrayWithObjects$count$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id * objects, NSUInteger cnt) {
    if (cnt != 6) {
        return _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, objects, cnt);
    }
    NSArray *origArr = _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, objects, cnt);
    
    NSUInteger oldRatesCount = 0;
    __unsafe_unretained id *oldRates = [NJChangePlaybackRateTool oldPlaybackRatesCArrayWithCount:&oldRatesCount];
    __autoreleasing id oldRatesCopy[oldRatesCount];
    for (NSUInteger i = 0; i < oldRatesCount; i++) {
        oldRatesCopy[i] = oldRates[i];
    }
    
    NSArray *oldRatesArr = _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, oldRatesCopy, oldRatesCount);
    if (cnt == 6 && [origArr isEqualToArray:oldRatesArr]) {
        NSUInteger newRatesCount = 0;
        __unsafe_unretained id *newRates = [NJChangePlaybackRateTool playbackRatesCArrayWithCount:&newRatesCount];
        __autoreleasing id newRatesCopy[newRatesCount];
        for (NSUInteger i = 0; i < newRatesCount; i++) {
            newRatesCopy[i] = newRates[i];
        }
        NSArray *newRatesArr = _logos_meta_orig$App$NSArray$arrayWithObjects$count$(self, _cmd, newRatesCopy, newRatesCount);
        return newRatesArr;
    }
    return origArr;
}





static __attribute__((constructor)) void _logosLocalCtor_a0d0ee7f(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE && [NJChangePlaybackRateTool compatibleCurrentSystemVersion]) {
        {Class _logos_class$App$IJKFFMoviePlayerControllerFFPlay = objc_getClass("IJKFFMoviePlayerControllerFFPlay"); { MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(setPlaybackRate:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$);}Class _logos_class$App$BBPlayerPlayerRateModel = objc_getClass("BBPlayerPlayerRateModel"); { MSHookMessageEx(_logos_class$App$BBPlayerPlayerRateModel, @selector(description), (IMP)&_logos_method$App$BBPlayerPlayerRateModel$description, (IMP*)&_logos_orig$App$BBPlayerPlayerRateModel$description);}Class _logos_class$App$NSArray = objc_getClass("NSArray"); Class _logos_metaclass$App$NSArray = object_getClass(_logos_class$App$NSArray); { MSHookMessageEx(_logos_metaclass$App$NSArray, @selector(arrayWithObjects:count:), (IMP)&_logos_meta_method$App$NSArray$arrayWithObjects$count$, (IMP*)&_logos_meta_orig$App$NSArray$arrayWithObjects$count$);}}
    }
}


#ifdef __cplusplus
extern "C" {
#endif

void *orig_landscapeVideo_fullScreenPlayback_RateModelArr;

int64_t my_landscapeVideo_fullScreenPlayback_RateModelArr();


void *orig_get_max_playback_rate;

double my_get_max_playback_rate(int64_t a1);

#ifdef __cplusplus
}
#endif



intptr_t g_slide;


static void _register_func_for_add_image(const struct mach_header *header, intptr_t slide) {
    Dl_info image_info;
    int result = dladdr(header, &image_info);
    if (result == 0) {
        NSLog(@"[%@] load mach_header failed", nj_logPrefix);
        return;
    }
    
    NSString *execName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleExecutable"];
    NSString *execPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingFormat:@"/%@", execName];
    if (strcmp([execPath UTF8String], image_info.dli_fname) == 0) {
        g_slide = slide;
        NSLog(@"[%@] g_slide:0x%lx", nj_logPrefix, g_slide);
    }
    
    
    
    
    
    
    
    
}






static int write_rate_string_to_address(uintptr_t dest_addr, NSString *str) {
    if (str == nil) {
        return -1;
    }

    
    const char *utf8Str = [str UTF8String];
    size_t strLength = strlen(utf8Str);   

    if (strLength > (NJ_RATE_BLOCK_SIZE - 1)) {
        
        strLength = NJ_RATE_BLOCK_SIZE - 1;
    }

    uint8_t block[NJ_RATE_BLOCK_SIZE];
    memset(block, 0, NJ_RATE_BLOCK_SIZE);

    
    memcpy(block, utf8Str, strLength);

    
    block[NJ_RATE_BLOCK_SIZE - 1] = 0xE0 + (uint8_t)strLength;

    
    memcpy((void *)dest_addr, block, NJ_RATE_BLOCK_SIZE);

    return 0;
}




static void write_rate_to_address(uintptr_t baseAddress) {
    NSArray<NSString *> *playbackRates = [NJChangePlaybackRateTool playbackRates];
    NSInteger count = playbackRates.count;
    for (NSInteger i = 0; i < count; i++) {
        uintptr_t currentAddress = baseAddress + i * NJ_RATE_BLOCK_SIZE;
        write_rate_string_to_address(currentAddress, playbackRates[i]);
    }
}


static void changePlaybackRates_LandscapeVideo_HalfScreenPlayback() {
    







    uintptr_t baseAddress = g_slide + 0x116E60390;
    write_rate_to_address(baseAddress);
}


static void changePlaybackRates_VerticalVideo_FullScreenPlayback_VerticalModePlayback() {
    







    uintptr_t baseAddress = g_slide+0x116E789A0;
    write_rate_to_address(baseAddress);
}

__attribute__((constructor)) static void __init__(void) {
    _dyld_register_func_for_add_image(_register_func_for_add_image);
    
    if (![NJChangePlaybackRateTool compatibleCurrentSystemVersion] ||
        ![NJPluginInfo isPlugin]) {
        return;
    }
    
    
    long long get_max_playback_rate_address = g_slide+0x10F10449C;
    NSLog(@"[%@] cal func get_max_playback_rate address:0x%llx", nj_logPrefix, get_max_playback_rate_address);
    MSHookFunction((void *)get_max_playback_rate_address,
                   (void*)my_get_max_playback_rate,
                   (void**)&orig_get_max_playback_rate);
    
    
    
    long long landscapeVideo_fullScreenPlayback_RateModelArr_address = g_slide+0x10D82E870;
    NSLog(@"[%@] cal func landscapeVideo_fullScreenPlayback_RateModelArr_address address:0x%llx", nj_logPrefix, landscapeVideo_fullScreenPlayback_RateModelArr_address);
    MSHookFunction((void *)landscapeVideo_fullScreenPlayback_RateModelArr_address,
                   (void*)my_landscapeVideo_fullScreenPlayback_RateModelArr,
                   (void**)&orig_landscapeVideo_fullScreenPlayback_RateModelArr);
    
    
    changePlaybackRates_LandscapeVideo_HalfScreenPlayback();
    
    
    changePlaybackRates_VerticalVideo_FullScreenPlayback_VerticalModePlayback();
}




