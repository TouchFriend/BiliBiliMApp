#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/PlaybackRate/NJDefaultPlaybackRate.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "NJCache.h"


#define NJ_ORIGIN_DEFAULT_PLAYBACK_RATE 1.0


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

@class BBPlayerPlayback; @class BPInlinePlayableOptions; 


#line 10 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Detail/PlaybackRate/NJDefaultPlaybackRate.xm"
static void (*_logos_orig$App$BBPlayerPlayback$setPlaybackRate$)(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayback* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$App$BBPlayerPlayback$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayback* _LOGOS_SELF_CONST, SEL, double); static BPInlinePlayableOptions* (*_logos_orig$App$BPInlinePlayableOptions$init)(_LOGOS_SELF_TYPE_INIT BPInlinePlayableOptions*, SEL) _LOGOS_RETURN_RETAINED; static BPInlinePlayableOptions* _logos_method$App$BPInlinePlayableOptions$init(_LOGOS_SELF_TYPE_INIT BPInlinePlayableOptions*, SEL) _LOGOS_RETURN_RETAINED; 

@interface BBPlayerPlayback : NSObject


@property (nonatomic) double playbackRate;

@property (nonatomic, strong) NSNumber *nj_isChangedPlaybackRate;


@property (retain, nonatomic) NSObject *currentItem;

@property (nonatomic, strong) NSObject *nj_currentItem;


@end




__attribute__((used)) static NSNumber * _logos_property$App$BBPlayerPlayback$nj_isChangedPlaybackRate(BBPlayerPlayback * __unused self, SEL __unused _cmd) { return (NSNumber *)objc_getAssociatedObject(self, (void *)_logos_property$App$BBPlayerPlayback$nj_isChangedPlaybackRate); }; __attribute__((used)) static void _logos_property$App$BBPlayerPlayback$setNj_isChangedPlaybackRate(BBPlayerPlayback * __unused self, SEL __unused _cmd, NSNumber * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$App$BBPlayerPlayback$nj_isChangedPlaybackRate, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

__attribute__((used)) static NSObject * _logos_property$App$BBPlayerPlayback$nj_currentItem(BBPlayerPlayback * __unused self, SEL __unused _cmd) { return (NSObject *)objc_getAssociatedObject(self, (void *)_logos_property$App$BBPlayerPlayback$nj_currentItem); }; __attribute__((used)) static void _logos_property$App$BBPlayerPlayback$setNj_currentItem(BBPlayerPlayback * __unused self, SEL __unused _cmd, NSObject * rawValue) { objc_setAssociatedObject(self, (void *)_logos_property$App$BBPlayerPlayback$nj_currentItem, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static void _logos_method$App$BBPlayerPlayback$setPlaybackRate$(_LOGOS_SELF_TYPE_NORMAL BBPlayerPlayback* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double playbackRate) {
    double rateValue = [[NJCache sharedInstance] defaultPlaybackRateValue];
    if (rateValue == NJ_ORIGIN_DEFAULT_PLAYBACK_RATE) {
        _logos_orig$App$BBPlayerPlayback$setPlaybackRate$(self, _cmd, playbackRate);
        return;
    }
    
    double oldPlaybackRate = self.playbackRate;
    
    BOOL isReuse = self.nj_currentItem && self.nj_currentItem != self.currentItem;
    
    if (!isReuse && oldPlaybackRate == rateValue && (!self.nj_isChangedPlaybackRate || ![self.nj_isChangedPlaybackRate boolValue])) {
        self.nj_isChangedPlaybackRate = @(YES);
        self.nj_currentItem = self.currentItem;
        _logos_orig$App$BBPlayerPlayback$setPlaybackRate$(self, _cmd, playbackRate);
        return;
    }
    
    
    if (isReuse) {
        self.nj_isChangedPlaybackRate = nil;
    }
    
    if (playbackRate == NJ_ORIGIN_DEFAULT_PLAYBACK_RATE
        && (!self.nj_isChangedPlaybackRate || ![self.nj_isChangedPlaybackRate boolValue])) {
        self.nj_isChangedPlaybackRate = @(YES);
        self.nj_currentItem = self.currentItem;
        playbackRate = rateValue;
    }
    self.nj_currentItem = self.currentItem;
    _logos_orig$App$BBPlayerPlayback$setPlaybackRate$(self, _cmd, playbackRate);
}



@interface BPInlinePlayableOptions : NSObject

@property (nonatomic) double rate;

@end



static BPInlinePlayableOptions* _logos_method$App$BPInlinePlayableOptions$init(_LOGOS_SELF_TYPE_INIT BPInlinePlayableOptions* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    double rateValue = [[NJCache sharedInstance] defaultPlaybackRateValue];
    if (rateValue == NJ_ORIGIN_DEFAULT_PLAYBACK_RATE) {
        return _logos_orig$App$BPInlinePlayableOptions$init(self, _cmd);
    }
    BPInlinePlayableOptions *ret = _logos_orig$App$BPInlinePlayableOptions$init(self, _cmd);
    ret.rate = rateValue;
    return ret;
}





static __attribute__((constructor)) void _logosLocalCtor_a0d0ee7f(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BBPlayerPlayback = objc_getClass("BBPlayerPlayback"); { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSNumber\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$App$BBPlayerPlayback, "nj_isChangedPlaybackRate", _attributes, attrc); char _typeEncoding[1024]; snprintf(_typeEncoding, 1024, "%s@:", @encode(NSNumber *)); class_addMethod(_logos_class$App$BBPlayerPlayback, @selector(nj_isChangedPlaybackRate), (IMP)&_logos_property$App$BBPlayerPlayback$nj_isChangedPlaybackRate, _typeEncoding); snprintf(_typeEncoding, 1024, "v@:%s", @encode(NSNumber *)); class_addMethod(_logos_class$App$BBPlayerPlayback, @selector(setNj_isChangedPlaybackRate:), (IMP)&_logos_property$App$BBPlayerPlayback$setNj_isChangedPlaybackRate, _typeEncoding); } { objc_property_attribute_t _attributes[16]; unsigned int attrc = 0; _attributes[attrc++] = (objc_property_attribute_t) { "T", "@\"NSObject\"" }; _attributes[attrc++] = (objc_property_attribute_t) { "&", "" }; _attributes[attrc++] = (objc_property_attribute_t) { "N", "" }; class_addProperty(_logos_class$App$BBPlayerPlayback, "nj_currentItem", _attributes, attrc); char _typeEncoding[1024]; snprintf(_typeEncoding, 1024, "%s@:", @encode(NSObject *)); class_addMethod(_logos_class$App$BBPlayerPlayback, @selector(nj_currentItem), (IMP)&_logos_property$App$BBPlayerPlayback$nj_currentItem, _typeEncoding); snprintf(_typeEncoding, 1024, "v@:%s", @encode(NSObject *)); class_addMethod(_logos_class$App$BBPlayerPlayback, @selector(setNj_currentItem:), (IMP)&_logos_property$App$BBPlayerPlayback$setNj_currentItem, _typeEncoding); } { MSHookMessageEx(_logos_class$App$BBPlayerPlayback, @selector(setPlaybackRate:), (IMP)&_logos_method$App$BBPlayerPlayback$setPlaybackRate$, (IMP*)&_logos_orig$App$BBPlayerPlayback$setPlaybackRate$);}Class _logos_class$App$BPInlinePlayableOptions = objc_getClass("BPInlinePlayableOptions"); { MSHookMessageEx(_logos_class$App$BPInlinePlayableOptions, @selector(init), (IMP)&_logos_method$App$BPInlinePlayableOptions$init, (IMP*)&_logos_orig$App$BPInlinePlayableOptions$init);}}
    }
}

