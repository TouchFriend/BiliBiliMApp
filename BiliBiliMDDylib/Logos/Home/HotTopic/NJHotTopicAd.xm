// 主页-热门的广告

/*
 BAPIAppShowPopularV1PopularReply：请求热门信息响应model
    BAPIAppCardV1Card: 热门卡片信息
 
 BAPIAppCardV1Card: 热门卡片信息
    BAPIAppCardV1PopularTopEntrance: 热门头部入口，popular_top_entrance，itemOneOfCase：9
        BAPIAppCardV1EntranceItem: 入口数据
    BAPIAppCardV1SmallCoverV5：小封面卡片，small_cover_v5，itemOneOfCase：1
    BAPIAppCardV1RcmdOneItem：推荐一个卡片，rcmd_one_item，itemOneOfCase：10
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "NJHotTopicCardHandler.h"
#import "BAPIAppCardV1Card.h"

@interface BAPIAppShowPopularV1PopularReply : NSObject

@property (retain, nonatomic) NSMutableArray *itemsArray;
/// 处理卡片数据
@property (nonatomic, strong) NJHotTopicCardHandler *nj_cardHandler;

@end

%hook BAPIAppShowPopularV1PopularReply

/// 处理卡片数据
%property (nonatomic, strong) NJHotTopicCardHandler *nj_cardHandler;

- (id)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error {
    BAPIAppShowPopularV1PopularReply *result = %orig;
    result.nj_cardHandler = [[NJHotTopicCardHandler alloc] init];
    
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppCardV1Card *item in result.itemsArray) {
        BAPIAppCardV1Card *cardData = [result.nj_cardHandler handleCardData:item];
        if (cardData) {
            [items addObject:cardData];
        }
    }
    result.itemsArray = items;
    return result;
}

%end

// 热门头部入口
@interface BAPIAppCardV1EntranceItem : NSObject

@property (copy, nonatomic) NSString *moduleId;

@end

@interface BAPIAppCardV1PopularTopEntrance : NSObject

@property (retain, nonatomic) NSMutableArray *itemsArray;

@end

%hook BAPIAppCardV1PopularTopEntrance

- (NSMutableArray *)itemsArray {
    NSMutableArray *origItems = %orig;
    NSMutableArray *items = [NSMutableArray array];
    // 是否出现<入站必刷>
    BOOL goodHistoryFlag = NO;
    for (BAPIAppCardV1EntranceItem *item in origItems) {
        if ([item.moduleId isEqualToString:@"hot-h5"] &&
            !goodHistoryFlag) {
            continue;
        }
        // 出现<入站必刷>
        if ([item.moduleId isEqualToString:@"good-history"]) {
            goodHistoryFlag = YES;
        }
        [items addObject:item];
    }
    // 保存过滤后的数据
    [self setItemsArray:items];
    return items;
}

%end




