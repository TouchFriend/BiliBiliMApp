//
//  NJRcmdSmallCoverV2Entry.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/4.
//

#import "NJRcmdSmallCoverV2Entry.h"

@implementation NJRcmdSmallCoverV2Entry

- (NSString *)cardType {
    return @"small_cover_v2";
}

- (NSDictionary *)handleData:(NSMutableDictionary *)data {
    // 特殊活动
    if ([data[@"card_goto"] isEqualToString:@"special_s"]) {
        return nil;
    }
    return data;
}

@end
