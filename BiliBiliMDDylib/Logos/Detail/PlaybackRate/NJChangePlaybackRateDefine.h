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

// ************* 在此声明swift定义的全局变量 *************

// [横屏视频-全屏播放]播放速度数组
void *orig_landscapeVideo_fullScreenPlayback_RateModelArr;

// 获取最大播放速度方法
void *orig_get_max_playback_rate;

#ifdef __cplusplus
}
#endif

NS_ASSUME_NONNULL_END
