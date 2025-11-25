//
//  NJPluginInfo.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJPluginInfo : NSObject

/// 版本信息，由App版本+插件版本构成，比如:1.0.v0.1.0
+ (NSString *)versionInfo;

/// 插件版本
+ (NSString *)pluginVersion;

/// App版本
+ (NSString *)appVersion;

/// 是否是插件
/// @return 返回是否是插件
+ (BOOL)isPlugin;

@end

NS_ASSUME_NONNULL_END
