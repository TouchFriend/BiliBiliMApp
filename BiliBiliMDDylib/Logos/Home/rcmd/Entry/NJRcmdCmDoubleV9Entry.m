//
//  NJRcmdCmDoubleV9Entry.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/4.
//

#import "NJRcmdCmDoubleV9Entry.h"

@implementation NJRcmdCmDoubleV9Entry

- (NSString *)cardType {
    return @"cm_double_v9";
}

- (NSDictionary *)handleData:(NSMutableDictionary *)data {
    if (data[@"ad_info"]) {
        return nil;
    }
    return data;
}

@end
