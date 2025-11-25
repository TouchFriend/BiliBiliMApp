#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Detail/NJPlaybackRate.xm"

#import <UIKit/UIKit.h>
#include <mach-o/dyld.h>
#import <CydiaSubstrate/CydiaSubstrate.h>
#import <dlfcn.h>
#import "BBPlayerPlayerRateModel.h"
#import "NJChangePlaybackRateTool.h"
#import "NJCommonDefine.h"
#import "BBPlayerObject.h"
#import "NJPluginInfo.h"



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

@class BBPlayerPlayerRateModel; @class BBPlayerSupportedPlaybackRate; @class NSArray; @class IJKFFMoviePlayerControllerFFPlay; @class VKSettingViewSelectModel; 


#line 13 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Detail/NJPlaybackRate.xm"
static void (*_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$)(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST, SEL, float); static NSString * (*_logos_orig$App$BBPlayerPlayerRateModel$description)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BBPlayerPlayerRateModel$description(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayerRateModel* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$App$VKSettingViewSelectModel$name)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$VKSettingViewSelectModel$name(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static id (*_logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSArray* (*_logos_meta_orig$App$NSArray$arrayWithObjects$count$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); static NSArray* _logos_meta_method$App$NSArray$arrayWithObjects$count$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id *, NSUInteger); 


@interface IJKFFMoviePlayerControllerFFPlay : NSObject

@property (readonly, nonatomic) float realPlaybackRate;
@property (readonly, nonatomic) float maxPlaybackRate;
@property (nonatomic) float playbackRate;

@end



static void _logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL IJKFFMoviePlayerControllerFFPlay* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float playbackRate) {
    _logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$(self, _cmd, playbackRate);
    NSLog(@"%@:%@-%p-%s-inputPlaybackRate:%lf-changedPlaybackRate:%lf-realPlaybackRate%lf-maxPlaybackRate:%lf", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, playbackRate, self.playbackRate, self.realPlaybackRate, self.maxPlaybackRate);
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




__attribute__((used)) static NSNumber * _logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag(VKSettingViewSelectModel * __unused self, SEL __unused _cmd) { return (NSNumber *)objc_getAssociatedObject(self, (void *)_logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag); }; __attribute__((used)) static void _logos_property$App$VKSettingViewSelectModel$setNj_isChangeFlag(VKSettingViewSelectModel * __unused self, SEL __unused _cmd, NSNumber * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static NSString * _logos_method$App$VKSettingViewSelectModel$name(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *name = _logos_orig$App$VKSettingViewSelectModel$name(self, _cmd);
    if ([name isEqualToString:@"倍速"] && (![self nj_isChangeFlag] || ![[self nj_isChangeFlag] boolValue])) {
        [self setNj_isChangeFlag:@(1)];
        [self setItems:[NJChangePlaybackRateTool playbackRates]];
    }
    return name;
}






static id _logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    id ret = _logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr(self, _cmd);
    NSLog(@"%@:%@-%p-%s-ret:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, ret);
    return ret;
}






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





static __attribute__((constructor)) void _logosLocalCtor_b4352501(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE && [NJChangePlaybackRateTool compatibleCurrentSystemVersion]) {
        {Class _logos_class$App$IJKFFMoviePlayerControllerFFPlay = objc_getClass("IJKFFMoviePlayerControllerFFPlay"); { MSHookMessageEx(_logos_class$App$IJKFFMoviePlayerControllerFFPlay, @selector(setPlaybackRate:), (IMP)&_logos_method$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$, (IMP*)&_logos_orig$App$IJKFFMoviePlayerControllerFFPlay$setPlaybackRate$);}Class _logos_class$App$BBPlayerPlayerRateModel = objc_getClass("BBPlayerPlayerRateModel"); { MSHookMessageEx(_logos_class$App$BBPlayerPlayerRateModel, @selector(description), (IMP)&_logos_method$App$BBPlayerPlayerRateModel$description, (IMP*)&_logos_orig$App$BBPlayerPlayerRateModel$description);}Class _logos_class$App$VKSettingViewSelectModel = objc_getClass("_TtC13VKSettingView11SelectModel"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSNumber\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$App$VKSettingViewSelectModel, "nj_isChangeFlag", _attributes, attrc); size_t _nBytes = 1024; char _typeEncoding[_nBytes]; snprintf(_typeEncoding, _nBytes, "%s@:", @encode(NSNumber *)); class_addMethod(_logos_class$App$VKSettingViewSelectModel, @selector(nj_isChangeFlag), (IMP)&_logos_property$App$VKSettingViewSelectModel$nj_isChangeFlag, _typeEncoding); snprintf(_typeEncoding, _nBytes, "v@:%s", @encode(NSNumber *)); class_addMethod(_logos_class$App$VKSettingViewSelectModel, @selector(setNj_isChangeFlag:), (IMP)&_logos_property$App$VKSettingViewSelectModel$setNj_isChangeFlag, _typeEncoding); } { MSHookMessageEx(_logos_class$App$VKSettingViewSelectModel, @selector(name), (IMP)&_logos_method$App$VKSettingViewSelectModel$name, (IMP*)&_logos_orig$App$VKSettingViewSelectModel$name);}Class _logos_class$App$BBPlayerSupportedPlaybackRate = objc_getClass("BBPlayerSupportedPlaybackRate"); Class _logos_metaclass$App$BBPlayerSupportedPlaybackRate = object_getClass(_logos_class$App$BBPlayerSupportedPlaybackRate); { MSHookMessageEx(_logos_metaclass$App$BBPlayerSupportedPlaybackRate, @selector(supportedPlaybackRateModelArr), (IMP)&_logos_meta_method$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr, (IMP*)&_logos_meta_orig$App$BBPlayerSupportedPlaybackRate$supportedPlaybackRateModelArr);}Class _logos_class$App$NSArray = objc_getClass("NSArray"); Class _logos_metaclass$App$NSArray = object_getClass(_logos_class$App$NSArray); { MSHookMessageEx(_logos_metaclass$App$NSArray, @selector(arrayWithObjects:count:), (IMP)&_logos_meta_method$App$NSArray$arrayWithObjects$count$, (IMP*)&_logos_meta_orig$App$NSArray$arrayWithObjects$count$);}}
    }
}


#ifdef __cplusplus
extern "C" {
#endif

void *orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip;

void my_change_LandscapeVideo_HalfScreenPlayback_rate_tip(long long a1, unsigned long long a2, long long a3, long long a4);


void *orig_landscapeVideo_fullScreenPlayback_RateModelArr;

int64_t my_landscapeVideo_fullScreenPlayback_RateModelArr();


void *orig_get_max_playback_rate;

double my_get_max_playback_rate(long long a1);

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


static int write_string_to_address(uintptr_t dest_addr, const char *str) {
    if (str == NULL) {
        return -1;
    }

    char *dest = (char *)dest_addr;

    
    strcpy(dest, str);

    return 0;
}



static void changePlaybackRates_LandscapeVideo_HalfScreenPlayback() {
    NSArray<NSString *> *playbackRates = [NJChangePlaybackRateTool playbackRates];
    
    write_string_to_address(g_slide+0x116E60390, [playbackRates[0] UTF8String]);
    
    
    write_string_to_address(g_slide+0x116E603A0, [playbackRates[1] UTF8String]);
    
    
    write_string_to_address(g_slide+0x116E603B0, [playbackRates[2] UTF8String]);
    
    
    write_string_to_address(g_slide+0x116E603C0, [playbackRates[3] UTF8String]);
    
    
    write_string_to_address(g_slide+0x116E603D0 , [playbackRates[4] UTF8String]);
    
    
    write_string_to_address(g_slide+0x116E603E0, [playbackRates[5] UTF8String]);
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
    
    
    
    long long change_LandscapeVideo_HalfScreenPlayback_rate_tip_address = g_slide+0x10A9966AC;
    NSLog(@"[%@] cal func change_LandscapeVideo_HalfScreenPlayback_rate_tip_address address:0x%llx", nj_logPrefix, change_LandscapeVideo_HalfScreenPlayback_rate_tip_address);
    MSHookFunction((void *)change_LandscapeVideo_HalfScreenPlayback_rate_tip_address,
                   (void*)my_change_LandscapeVideo_HalfScreenPlayback_rate_tip,
                   (void**)&orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip);
    
    
    
    long long landscapeVideo_fullScreenPlayback_RateModelArr_address = g_slide+0x10D82E870;
    NSLog(@"[%@] cal func landscapeVideo_fullScreenPlayback_RateModelArr_address address:0x%llx", nj_logPrefix, landscapeVideo_fullScreenPlayback_RateModelArr_address);
    MSHookFunction((void *)landscapeVideo_fullScreenPlayback_RateModelArr_address,
                   (void*)my_landscapeVideo_fullScreenPlayback_RateModelArr,
                   (void**)&orig_landscapeVideo_fullScreenPlayback_RateModelArr);
    
    
    changePlaybackRates_LandscapeVideo_HalfScreenPlayback();
    
}




