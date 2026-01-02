//
//  NJChangePlaybackRateDefine.h
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2026/1/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#ifdef __cplusplus
extern "C" {
#endif

// typedefs
typedef double (*orig_get_max_playback_rate_type)(int64_t);
typedef int64_t (*orig_landscapeVideo_fullScreenPlayback_RateModelArr_type)(void);

// 获取最大播放速度方法
orig_get_max_playback_rate_type get_orig_get_max_playback_rate(void);
void set_orig_get_max_playback_rate(orig_get_max_playback_rate_type fn);

int64_t my_landscapeVideo_fullScreenPlayback_RateModelArr(void);


// [横屏视频-全屏播放]播放速度数组
orig_landscapeVideo_fullScreenPlayback_RateModelArr_type get_orig_landscapeVideo_fullScreenPlayback_RateModelArr(void);
void set_orig_landscapeVideo_fullScreenPlayback_RateModelArr(
    orig_landscapeVideo_fullScreenPlayback_RateModelArr_type fn
);

double my_get_max_playback_rate(int64_t a1);


#ifdef __cplusplus
}
#endif

NS_ASSUME_NONNULL_END
