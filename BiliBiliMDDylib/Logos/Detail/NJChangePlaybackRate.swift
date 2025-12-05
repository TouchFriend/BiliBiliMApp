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

// 定义全局函数指针变量，并绑定一个 C 名字
@_silgen_name("orig_get_max_playback_rate")
nonisolated(unsafe) public var orig_get_max_playback_rate: orig_get_max_playback_rate_type? = nil

// 获取最大播放速度方法
@_cdecl("my_get_max_playback_rate")
func my_get_max_playback_rate(a1: Int64) -> Double {
    return maxPlaybackRateValue
}


// 声明原函数类型
public typealias orig_landscapeVideo_fullScreenPlayback_RateModelArr_type = @convention(c) () -> Int64

// 定义全局函数指针变量，并绑定一个 C 名字
@_silgen_name("orig_landscapeVideo_fullScreenPlayback_RateModelArr")
nonisolated(unsafe) public var orig_landscapeVideo_fullScreenPlayback_RateModelArr: orig_landscapeVideo_fullScreenPlayback_RateModelArr_type? = nil
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

