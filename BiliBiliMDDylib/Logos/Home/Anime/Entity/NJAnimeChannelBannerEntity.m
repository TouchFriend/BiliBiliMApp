//
//  NJAnimeChannelBannerEntity.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/10.
//

#import "NJAnimeChannelBannerEntity.h"

@implementation NJAnimeChannelBannerEntity

- (NSString *)cardType {
    return @"BANNER";
}

- (NSDictionary *)handleData:(NSMutableDictionary *)data {
    if ([data[@"module_data"][@"items"] isKindOfClass:[NSMutableArray class]]) {
        NSMutableArray *bannerItems = data[@"module_data"][@"items"];
        NSMutableArray *newBannerItems = [NSMutableArray array];
        for (NSMutableDictionary *itemDic in bannerItems) {
            NSDictionary *bannerData = [self handleBannerData:itemDic];
            if (bannerData) {
                [newBannerItems addObject:bannerData];
            }
        }
        [bannerItems removeAllObjects];
        [bannerItems addObjectsFromArray:newBannerItems];
        // 没有banner数据
        if (bannerItems.count == 0) {
            return nil;
        }
    }
    return data;
}

- (NSDictionary *_Nullable)handleBannerData:(NSMutableDictionary *)bannerDic {
    if ([bannerDic[@"item_type"] isEqualToString:@"focus_img"] &&
        (!bannerDic[@"season_id"] || !bannerDic[@"season_type"])) {
        return nil;
    }
    return bannerDic;
}

@end
