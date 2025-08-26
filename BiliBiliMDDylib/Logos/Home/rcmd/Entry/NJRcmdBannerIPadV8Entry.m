//
//  NJRcmdBannerIPadV8Entry.m
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/8/26.
//

#import "NJRcmdBannerIPadV8Entry.h"

@implementation NJRcmdBannerIPadV8Entry

- (NSString *)cardType {
    return @"banner_ipad_v8";
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
    if (bannerDic[@"is_ad"]) {
        return nil;
    }
    return bannerDic;
}


@end
