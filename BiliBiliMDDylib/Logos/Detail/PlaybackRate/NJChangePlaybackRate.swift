//
//  NJChangeRateTool.swift
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/11/2.
//

import Foundation
import ObjectiveC.runtime

// 视频最大播放速度
public let maxPlaybackRateValue = 4.0


// 声明原函数类型
public typealias orig_get_max_playback_rate_type = @convention(c) (_ a1: Int64) -> Double

// Swift 内部保存
nonisolated(unsafe)
private var orig_get_max_playback_rate: orig_get_max_playback_rate_type? = nil

// Swift 导出: Getter
@_cdecl("get_orig_get_max_playback_rate")
func get_orig_get_max_playback_rate() -> orig_get_max_playback_rate_type? {
    return orig_get_max_playback_rate
}

// Swift 导出: Setter
@_cdecl("set_orig_get_max_playback_rate")
func set_orig_get_max_playback_rate(_ fn: orig_get_max_playback_rate_type?) {
    orig_get_max_playback_rate = fn
}

// 获取最大播放速度方法
@_cdecl("my_get_max_playback_rate")
func my_get_max_playback_rate(a1: Int64) -> Double {
    return maxPlaybackRateValue
}


// 声明原函数类型
public typealias orig_landscapeVideo_fullScreenPlayback_RateModelArr_type = @convention(c) () -> Int64

// Swift 内部保存
nonisolated(unsafe)
private var orig_landscapeVideo_fullScreenPlayback_RateModelArr: orig_landscapeVideo_fullScreenPlayback_RateModelArr_type? = nil

// Swift 导出: Getter
@_cdecl("get_orig_landscapeVideo_fullScreenPlayback_RateModelArr")
func get_orig_landscapeVideo_fullScreenPlayback_RateModelArr()
    -> orig_landscapeVideo_fullScreenPlayback_RateModelArr_type? {
    return orig_landscapeVideo_fullScreenPlayback_RateModelArr
}

// Swift 导出: Setter
@_cdecl("set_orig_landscapeVideo_fullScreenPlayback_RateModelArr")
func set_orig_landscapeVideo_fullScreenPlayback_RateModelArr(
    _ fn: orig_landscapeVideo_fullScreenPlayback_RateModelArr_type?
) {
    orig_landscapeVideo_fullScreenPlayback_RateModelArr = fn
}

// [横屏视频-全屏播放]播放速度数组
@_cdecl("my_landscapeVideo_fullScreenPlayback_RateModelArr")
func my_landscapeVideo_fullScreenPlayback_RateModelArr() -> Int64 {
    if let orig_landscapeVideo_fullScreenPlayback_RateModelArr {
        let origPtr = orig_landscapeVideo_fullScreenPlayback_RateModelArr()
        let origArr = unsafeBitCast(origPtr, to: [NSObject].self)
        let tool = NJChangePlaybackRateTool()
        tool.changePlaybackRate(withRateArray: origArr)
        let retPtr = unsafeBitCast(origArr, to: Int64.self)
        return retPtr
    }
    return 0
}

