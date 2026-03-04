//
//  NJMyPrivilegeModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

#import <Foundation/Foundation.h>
#import "NJCouponInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJMyPrivilegeModel : NSObject

/// <#Desription#>
@property (nonatomic, copy) NSString *bind_phone;
/// <#Desription#>
@property (nonatomic, assign) NSInteger level;
/// <#Desription#>
@property (nonatomic, strong) NSArray<NJCouponInfo *> *list;

+ (id)modelContainerPropertyGenericClass;

@end

NS_ASSUME_NONNULL_END
