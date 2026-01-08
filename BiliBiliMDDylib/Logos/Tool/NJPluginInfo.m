//
//  NJPluginInfo.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import "NJPluginInfo.h"

@implementation NJPluginInfo

/// 版本信息
+ (NSString *)versionInfo {
    return [NSString stringWithFormat:@"%@.v%@", self.appVersion, self.pluginVersion];
}

/// 插件版本
+ (NSString *)pluginVersion {
    return @"2.0.0";
}

/// App版本
+ (NSString *)appVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

/// 是否是插件
/// @return 返回是否是插件
+ (BOOL)isPlugin {
#ifdef NJ_TWEAK
    return YES;
#else
    return NO;
#endif
}

@end
