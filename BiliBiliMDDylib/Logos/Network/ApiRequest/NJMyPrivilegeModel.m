//
//  NJMyPrivilegeModel.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

#import "NJMyPrivilegeModel.h"

@implementation NJMyPrivilegeModel

+ (id)modelContainerPropertyGenericClass {
    return @{@"list": [NJCouponInfo class]};
}

@end
