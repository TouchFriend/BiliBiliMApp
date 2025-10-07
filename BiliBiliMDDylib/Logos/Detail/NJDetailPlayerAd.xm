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
    - (void)willLayoutSubWidgets;   // 即将布局子组件
    - (void)didLayoutSubWidgets;    // 已经布局子组件
 
 
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
            BBPlayerOnlineCounterWidget     // 在线人数
            BBPlayerUpTagWidget             // up主头像
            BBPlayerOperationTagWidget      // 运营标签
 
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
 
 BBPlayerOperationTagWidget
    NSArray *_tagModels;
        BBPlayerCoreOperationTagModel
 
 BBPlayerCoreOperationTagModel
    @property (nonatomic) unsigned long long type;
        type:1      // UP主都在用的宝藏功能
        type:7      // 使用的BGM
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

@interface BBPlayerWidget : NSObject

@end

@interface BBPlayerUpTagWidget : NSObject

@end

// 全屏播放时的up主头像（经常误触点了关注😮‍💨）
%hook BBPlayerUpTagWidget

- (id)initWithContext:(id)context {
    return nil;
}

%end

@interface BBPlayerPortraitScreenBottomWidget : NSObject

// 全屏播放时的up主头像
- (id)upTagWidget;
// UP主都在用的宝藏功能
- (id)operationTagWidget;

@end

%hook BBPlayerPortraitScreenBottomWidget

// 处理_upTagWidget为nil时的奔溃问题；_secondControlWidget包含_upTagWidget。
- (void)setupFirstControlConstraints {
    BBPlayerWidget *upTagWidget = [self upTagWidget];
    if (upTagWidget) {
        %orig;
    }
}

// 处理_operationTagWidget为nil时的奔溃问题；_firstControlWidget包含_operationTagWidget。
- (void)setupSecondControlConstraints {
    BBPlayerWidget *operationTagWidget = [self operationTagWidget];
    if (operationTagWidget) {
        %orig;
    }
}


%end

// 横屏视频的竖屏全屏按钮
%hook BBPlayerBizGotoStoryWidget

- (id)initWithContext:(id)context {
    return nil;
}

%end

@interface BBPlayerCoreOperationTagModel : NSObject

@property (nonatomic) unsigned long long type;

@end


@interface BBPlayerOperationTagService : NSObject

@property (retain, nonatomic) NSArray *tagModels;
// 过滤类型
- (NSSet<NSNumber *> *)nj_filterTypes;

@end

%hook BBPlayerOperationTagService

- (NSArray *)tagModels {
    NSArray *origTagModels = %orig;
    NSMutableArray *items = [NSMutableArray array];
    for (BBPlayerCoreOperationTagModel *item in origTagModels) {
        if ([[self nj_filterTypes] containsObject:@(item.type)]) {
            continue;
        }
        [items addObject:item];
    }
    // 保存过滤后的数据
    [self setValue:items forKeyPath:@"_tagModels"];
    return items;
}

%new
- (NSSet<NSNumber *> *)nj_filterTypes {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(1),      // UP主都在用的宝藏功能
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
