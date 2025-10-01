//
//  NJRcmdCmDoubleV7Entry.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/10/1.
//

#import "NJRcmdCmDoubleV7Entry.h"

@implementation NJRcmdCmDoubleV7Entry

- (NSString *)cardType {
    return @"cm_double_v7";
}

- (NSDictionary *)handleData:(NSMutableDictionary *)data {
    if (data[@"ad_info"]) {
        return nil;
    }
    return data;
}

@end
