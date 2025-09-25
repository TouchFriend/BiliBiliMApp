//
//  NJDetailPlayerAd.xm
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/9/10.
//

// 详情页播放器广告

/*
 BBPlayerWidget // 所有组件都继承BBPlayerWidget
    BBPlayerWidget *superWidget;    // 父组件
    NSArray *subWidgets;            // 子组件
 
 
 BBPlayerContext    // 上下文
    BBPlayerControlWidgetService *controlWidgetService; // 控制组建服务
        Class rootWidgetClass; // 根组件类型：BBPlayerControlContainerRootWidget
    
 BBPlayerControlContainerRootWidget //  控制根组件
    BBPlayerWidget *_leftBarWidget;    // 左边条组件：BBPlayerFullScreenLeftWidget
    BBPlayerBeyondBoundsWidget *_btmBarWidget;  // 底部条组件
    - (void)_setupSubWidgets;  // 设置子组件
 
 BBPlayerFullScreenLeftWidget   // 全屏左边组件（横屏）
    BBPlayerFlexContainerWidget *_topControlWidget  // 头部控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerOnlineCounterWidget    // 在线人数
            BBPlayerUpTagWidget            // up主头像
            BBPlayerOperationTagWidget
 
    BBPlayerFlexContainerWidget *_bottomControlWidget;  // 底部控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerTimeWidget  // 时间组件, 00:00/37:30
 
 
 BBPlayerBeyondBoundsWidget // 底部条组件
    NSArray *subWidgets;    // 拥有的子组件
        BBPlayerHalfScreenBottomWidget // 半屏底部组件
 
 
 BBPlayerHalfScreenBottomWidget // 半屏底部组件
    BBPlayerFlexContainerWidget *_leftControlWidget;    // 左边控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerPlayAndPauseWidget      // 播放和暂停
            BBPlayerSeekbarWidgetV2         // 时间滑动条
            BBPlayerTimeHintLabelWidget     // 时间提示标签
    BBPlayerFlexContainerWidget *_rightControlWidget;   // 右边控制组件
        NSArray *subWidgets // 拥有的子组件
            BBPlayerSwitchScreenWidget      //  全屏按钮
            BBPlayerBizGotoStoryWidget      //  横屏视频的竖屏全屏按钮
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

@interface BBPlayerUpTagWidget : NSObject

@end

// 全屏播放时的up主头像（经常误触点了关注😮‍💨）
%hook BBPlayerUpTagWidget

- (id)initWithContext:(id)context {
    return nil;
}

%end

%hook BBPlayerPortraitScreenBottomWidget

// 处理_upTagWidget为nil时的奔溃问题；_firstControlWidget包含_upTagWidget。
- (void)setupFirstControlConstraints {
    
}

%end

// 横屏视频的竖屏全屏按钮
%hook BBPlayerBizGotoStoryWidget

- (id)initWithContext:(id)context {
    return nil;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
