//
//  NJRcmdSmallCoverV9Entry.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/16.
//

#import "NJRcmdSmallCoverV9Entry.h"

@implementation NJRcmdSmallCoverV9Entry

- (NSString *)cardType {
    return @"small_cover_v9";
}

- (NSDictionary *)handleData:(NSMutableDictionary *)data {
    // 直播
    if ([data[@"card_goto"] isEqualToString:@"live"]) {
        return nil;
    }
    return data;
}

@end
