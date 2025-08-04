//
//  NJCommonDefine.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/6/13.
//

#import <UIKit/UIKit.h>
#import "NJAsset.h"

NS_ASSUME_NONNULL_BEGIN

/*
 NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__);
 %log(nj_logPrefix);
 */
/// 日志前缀
UIKIT_EXTERN const NSString *nj_logPrefix;

/// UserDefaults
#define NJ_USER_DEFAULTS [NSUserDefaults standardUserDefaults]
/// 资源路径
#define NJ_ASSET_PATH(path) [NJAsset assetPathWithName:path]


/// --------------------- 设置页面 ---------------------
/// 总开关
#define NJ_MASTER_SWITCH_KEY @"NJ_MASTER_SWITCH_KEY"
/// 总开关的值
#define NJ_MASTER_SWITCH_VALUE (![NJ_USER_DEFAULTS objectForKey:NJ_MASTER_SWITCH_KEY] || \
[NJ_USER_DEFAULTS boolForKey:NJ_MASTER_SWITCH_KEY])

/// --------------------- 设置页面 ---------------------

NS_ASSUME_NONNULL_END
