// 默认播放速度

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "NJCache.h"

// 原始默认播放速度
#define NJ_ORIGIN_DEFAULT_PLAYBACK_RATE 1.0

%group App

@interface BBPlayerPlayback : NSObject

/// 播放速度
@property (nonatomic) double playbackRate;
/// 是否更改过播放速度
@property (nonatomic, strong) NSNumber *nj_isChangedPlaybackRate;

/// 当前播放模型
@property (retain, nonatomic) NSObject *currentItem;
/// 记录当前播放模型
@property (nonatomic, strong) NSObject *nj_currentItem;


@end

%hook BBPlayerPlayback

/// 是否更改过播放速度
%property (nonatomic, strong) NSNumber *nj_isChangedPlaybackRate;
/// 记录当前播放模型
%property (nonatomic, strong) NSObject *nj_currentItem;

- (void)setPlaybackRate:(double)playbackRate {
    double rateValue = [[NJCache sharedInstance] defaultPlaybackRateValue];
    if (rateValue == NJ_ORIGIN_DEFAULT_PLAYBACK_RATE) {
        %orig;
        return;
    }
    
    double oldPlaybackRate = self.playbackRate;
    // 是否重利用播放器
    BOOL isReuse = self.nj_currentItem && self.nj_currentItem != self.currentItem;
    
    if (!isReuse && oldPlaybackRate == rateValue && (!self.nj_isChangedPlaybackRate || ![self.nj_isChangedPlaybackRate boolValue])) {
        self.nj_isChangedPlaybackRate = @(YES);
        self.nj_currentItem = self.currentItem;
        %orig;
        return;
    }
    
    // 重利用播放器
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
    %orig;
}

%end

@interface BPInlinePlayableOptions : NSObject

@property (nonatomic) double rate;

@end

%hook BPInlinePlayableOptions

- (id)init {
    double rateValue = [[NJCache sharedInstance] defaultPlaybackRateValue];
    if (rateValue == NJ_ORIGIN_DEFAULT_PLAYBACK_RATE) {
        return %orig;
    }
    BPInlinePlayableOptions *ret = %orig;
    ret.rate = rateValue;
    return ret;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}

