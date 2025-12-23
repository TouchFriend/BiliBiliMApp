// 视频详情页广告

/*
 BAPIAppPlayeruniteV1PlayViewUniteReply：请求视频信息响应model
 
 BAPIAppViewuniteV1ViewReply： 请求卡片列表响应model
    BAPIAppViewuniteV1Tab：所有标签信息，通过数组保存
        BAPIAppViewuniteV1TabModule：统一通用标签model，根据类型选择具体的标签model
            BAPIAppViewuniteV1IntroductionTab：简介标签信息
                BAPIAppViewuniteCommonModule：简介视图统一通用模块
            BAPIAppViewuniteV1ReplyTab：评论标签信息
            BAPIAppViewuniteCommonActivityTab：活动标签信息
 
 BAPIAppViewuniteCommonModule：简介视图统一通用模块
    BAPIAppViewuniteCommonHeadline:视频标题；type: UGC_HEADLINE
    BAPIAppViewuniteCommonLikeComment: 点赞后显示的[鼓励UP主继续创作]，比如成为老粉 type: LIKE_COMMENT
    BAPIAppViewuniteCommonUgcIntroduction：UGC简介，比如标签、评分、通用排名等等；type: UGC_INTRODUCTION
    BAPIAppViewuniteCommonKingPosition：操作栏，比如点赞，不喜欢，投币等等； type: KING_POSITION
    BAPIAppViewuniteCommonSpecialTag：特殊标签；type: SPECIALTAG
    BAPIAppViewuniteCommonMerchandise：UP主分享好物；type: MERCHANDISE
    BAPIAppViewuniteCommonRelates: 推荐内容；type: RELATED_RECOMMEND
        BAPIAppViewuniteCommonRelateCard:统一通用相关卡片

 BAPIAppViewuniteCommonRelateCard:统一通用相关卡片
    BAPIAppViewuniteCommonRelateGameCard：游戏卡片；relate_card_type: GAME
    BAPIAppViewuniteCommonRelateLiveCard: 直播卡片；relate_card_type: LIVE
    BAPIAppViewuniteCommonRelateCMCard: 广告卡片; relate_card_type: CM
 
 */

// 提示
/*
 BBPlayerToastWidgetService
    BBPlayerToastContainerWidget
        BBPlayerToastContainerWidgetView
 
 BBPlayerNetworkPlayerItemService
    BBPlayerToastWidgetService
 
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

@interface BBAdUGCContext : NSObject

@end

// 视频下方广告
%hook BBAdUGCContext

- (id)initWithResovler:(id)resovler {
    return nil;
}

%end

/****************************** 简介标签 ************************************/

// 简介-UP主分享好物
@interface BAPIAppViewuniteCommonModule : NSObject

@property (nonatomic, assign) int type;

@end

%hook BAPIAppViewuniteCommonModule

- (NSString *)description {
    NSString *orig = %orig;
    NSString *ret = [orig stringByAppendingFormat:@"type: %@", @(self.type)];
    return ret;
}

%end

@interface BAPIAppViewuniteV1IntroductionTab : NSObject

@property (retain, nonatomic) NSMutableArray *modulesArray;

- (NSSet<NSNumber *> *)nj_filterTypes;

@end

%hook BAPIAppViewuniteV1IntroductionTab

// 简介版块的所有数据
- (NSMutableArray *)modulesArray {
    NSMutableArray *origModules = %orig;
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppViewuniteCommonModule *item in origModules) {
        if ([[self nj_filterTypes] containsObject:@(item.type)]) {
            continue;
        }
        [items addObject:item];
    }
    // 保存过滤后的数据
    [self setModulesArray:items];
    return items;
}

%new
- (NSSet<NSNumber *> *)nj_filterTypes {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(55),      // MERCHANDISE, UP主分享好物
            @(29),      // PAY_BAR, 大会员
            @(34),      // LIKE_COMMENT, 鼓励UP主继续创作
            @(36),      // COVENANTER, 成为UP主的"老粉"
            @(12),      // LIVE_ORDER, 预约直播
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

%end

// 卡片的基本信息
@interface BAPIAppViewuniteCommonCardBasicInfo : NSObject

// operation, 后台添加，固定位置的广告
@property (copy, nonatomic) NSString *from;

@end

// 简介的首屏卡片
@interface BAPIAppViewuniteCommonRelateCard : NSObject

/// 卡片类型
@property (nonatomic, assign) int relateCardType;
/// 是否是广告（买了推广的）
@property (nonatomic) _Bool hasCmStock;
/// 基本信息
@property (retain, nonatomic) BAPIAppViewuniteCommonCardBasicInfo *basicInfo;

@end

@interface NJDetailIntroductionCardFilterTool : NSObject

/// 过滤卡片类型
+ (NSSet<NSNumber *> *)filterTypes;

@end

@implementation NJDetailIntroductionCardFilterTool

/*
    relate_card_type: AV relateCardType:1               // 普通视频卡片
    relate_card_type: RESOURCE relateCardType:3         // 商品卡片
    relate_card_type: GAME relateCardType:4             // 游戏卡片
    relate_card_type: CM relateCardType:5               // 广告卡片
    relate_card_type: LIVE relateCardType:6             // 直播卡片
    relate_card_type: SPECIAL relateCardType:10         // 特殊活动卡片
    
 */
+ (NSSet<NSNumber *> *)filterTypes {
    static NSSet *filterSet;
    if (!filterSet) {
        NSArray *types = @[
            @(3),   // RESOURCE, 商品卡片
            @(4),   // GAME, 游戏卡片
            @(5),   // CM, 广告卡片
            @(6),   // LIVE, 直播卡片
            @(10),  // SPECIAL, 特殊活动卡片
        ];
        filterSet = [NSSet setWithArray:types];
    }
    return filterSet;
}

@end

@interface BAPIAppViewuniteCommonRelates : NSObject

@property (retain, nonatomic) NSMutableArray *cardsArray;

@end

%hook BAPIAppViewuniteCommonRelates

- (NSMutableArray *)cardsArray {
    NSMutableArray *origCards = %orig;
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppViewuniteCommonRelateCard *item in origCards) {
        if ([[NJDetailIntroductionCardFilterTool filterTypes] containsObject:@(item.relateCardType)] ||
            item.hasCmStock) {
            continue;
        }
        // 后台添加，固定位置的广告
        if ([item.basicInfo.from isEqualToString:@"operation"]) {
            continue;
        }
        [items addObject:item];
    }
    // 保存过滤后的数据
    [self setCardsArray:items];
    return items;
}

%end

// 简介后续加载的卡片
@interface BAPIAppViewuniteV1RelatesFeedReply : NSObject

@property (retain, nonatomic) NSMutableArray *relatesArray;

@end

%hook BAPIAppViewuniteV1RelatesFeedReply

- (id)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error {
    BAPIAppViewuniteV1RelatesFeedReply *result = %orig;
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppViewuniteCommonRelateCard *item in result.relatesArray) {
        if ([[NJDetailIntroductionCardFilterTool filterTypes] containsObject:@(item.relateCardType)] ||
            item.hasCmStock) {
            continue;
        }
        [items addObject:item];
    }
    result.relatesArray = items;
    return result;
}

%end

/****************************** 简介标签 ************************************/

/****************************** 评论标签 ************************************/

// 评论顶部黄色广告条
%hook BBAdSourceContent

- (id)init {
    return nil;
}

%end

%hook BBAdCommonBaseModel

+ (id)modelWithMossMessage:(id)message {
    return nil;
}


%end

/****************************** 评论标签 ************************************/

/****************************** 提示 ************************************/

%hook BBPlayerToastContainerWidget

- (id)presentOperableToastWithHintText:(id)hintText descText:(id)descText actionText:(id)actionText actionBlock:(id)actionBlock closeBlock:(id)closeBlock {
    return %orig;
}

%end

// 流量广告，比如[2亿+人都领取过，80G大流量月月享>]
%hook BBPlayerNetworkPlayerItemRecorder

- (long long)isCellularNetworkToastShowed {
    return NSIntegerMax;
}

%end

/****************************** 提示 ************************************/

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
