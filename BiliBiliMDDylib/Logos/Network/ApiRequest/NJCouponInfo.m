//
//  NJCouponInfo.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/3.
//

#import "NJCouponInfo.h"

@implementation NJCouponInfo

- (NSString *)description {
    return [NSString stringWithFormat:
            @"<%@: %p> {\n"
            @"  type = %ld;\n"
            @"  state = %ld;\n"
            @"  expire_time = %ld;\n"
            @"  vip_type = %ld;\n"
            @"  next_receive_days = %ld;\n"
            @"}",
            NSStringFromClass([self class]),
            self,
            (long)self.type,
            (long)self.state,
            (long)self.expire_time,
            (long)self.vip_type,
            (long)self.next_receive_days];
}

@end
