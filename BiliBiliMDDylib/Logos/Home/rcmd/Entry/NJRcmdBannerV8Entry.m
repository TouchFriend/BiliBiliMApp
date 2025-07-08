//
//  NJRcmdBannerV8Entry.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/4.
//

#import "NJRcmdBannerV8Entry.h"

@implementation NJRcmdBannerV8Entry

- (NSString *)cardType {
    return @"banner_v8";
}

- (NSDictionary *)handleData:(NSMutableDictionary *)data {
    if ([data[@"banner_item"] isKindOfClass:[NSMutableArray class]]) {
        NSMutableArray *bannerItems = data[@"banner_item"];
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
    if ([bannerDic[@"type"] isEqualToString:@"static"]) {
        NSMutableDictionary *staticBannerDic = bannerDic[@"static_banner"];
        if ([staticBannerDic[@"cm_mark"] isKindOfClass:[NSNumber class]] &&
            [staticBannerDic[@"cm_mark"] intValue] == 0) {
            return nil;
        }
    }
    if ([bannerDic[@"type"] isEqualToString:@"ad"]) {
        return nil;
    }
    return bannerDic;
}

@end
