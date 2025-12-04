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
public typealias orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip_type = @convention(c) (_ a1: Int64, _ a2: UInt64, _ a3: Int64, _ a4: Int64) -> Void

// 定义全局函数指针变量，并绑定一个 C 名字
@_silgen_name("orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip")
nonisolated(unsafe) public var orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip: orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip_type? = nil

// [横屏视频-半屏播放]的播放速度-修复点击提示问题
@_cdecl("my_change_LandscapeVideo_HalfScreenPlayback_rate_tip")
func my_change_LandscapeVideo_HalfScreenPlayback_rate_tip(a1: Int64, a2: UInt64, a3: Int64, a4: Int64) {
    // 模拟字符串数组
    let arr = NJChangePlaybackRateTool.playbackRates()

    // 获取数组对象在堆上的指针地址
    let arrPtr = unsafeBitCast(arr, to: Int64.self)
    
    if let orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip {
        orig_change_LandscapeVideo_HalfScreenPlayback_rate_tip(a1, a2, a3, arrPtr)
    }
}


// 声明原函数类型
public typealias orig_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip_type = @convention(c) (_ a1: Int64, _ a2: UInt64, _ a3: Int64, _ a4: Int64, _ a5: Int64) -> Int64

// 定义全局函数指针变量，并绑定一个 C 名字
@_silgen_name("orig_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip")
nonisolated(unsafe) public var orig_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip: orig_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip_type? = nil

// [竖屏视频-全屏播放-用竖屏模式播放]的播放速度-修复点击提示问题
@_cdecl("my_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip")
func my_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip(a1: Int64, a2: UInt64, a3: Int64, a4: Int64, a5: Int64) -> Int64 {
    // 模拟字符串数组
    let arr = NJChangePlaybackRateTool.playbackRates()

    // 获取数组对象在堆上的指针地址
    let arrPtr = unsafeBitCast(arr, to: Int64.self)
    
    if let orig_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip {
        return orig_change_VerticalVideo_FullScreenPlayback_VerticalModePlayback_rate_tip(a1, a2, a3, arrPtr, a5)
    }
    return 1
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

