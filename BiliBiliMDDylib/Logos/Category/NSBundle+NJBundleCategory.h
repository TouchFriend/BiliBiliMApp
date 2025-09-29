//
//  NSBundle+NJBundleCategory.h
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (NJBundleCategory)

/// 获取NJMainBundle
/// @return 返回NJMainBundle
+ (NSBundle *_Nullable)nj_mainBundle;

@end

NS_ASSUME_NONNULL_END
