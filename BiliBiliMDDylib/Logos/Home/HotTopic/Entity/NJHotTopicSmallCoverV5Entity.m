//
//  NJHotTopicSmallCoverV5Entity.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/15.
//

#import "NJHotTopicSmallCoverV5Entity.h"

@implementation NJHotTopicSmallCoverV5Entity

- (NSString *)cardType {
    return @"1";
}

- (BAPIAppCardV1Card *)handleData:(BAPIAppCardV1Card *)data {
    BAPIAppCardV1Base *base = data.smallCoverV5.base;
    // 后台添加，固定位置的广告
    if ([base.fromType isEqualToString:@"operation"]) {
        return nil;
    }
    // 有广告信息
    if (base.hasAdInfo) {
        return nil;
    }
    return data;
}

@end
