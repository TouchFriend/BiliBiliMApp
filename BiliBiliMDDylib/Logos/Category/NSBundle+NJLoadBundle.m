//
//  NSBundle+NJLoadBundle.m
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/9/29.
//

#import "NSBundle+NJLoadBundle.h"
#import <rootless.h>
#import "NJPluginInfo.h"

// 插件资源主路径
#define NJ_TWEAK_ASSET_MAIN_PATH ROOT_PATH_NS(@"/Library/Caches/")


@implementation NSBundle (NJLoadBundle)

/// 获取bundle的路径
/// - Parameter bundleName: bundle的名称
/// @return 返回bundle的路径
+ (NSString *_Nullable)nj_bundlePathWithName:(NSString *)bundleName {
    NSString *path;
    if ([NJPluginInfo isPlugin]) {
        path = [self nj_bundlePathForTweakWithName:bundleName];
    } else {
        path = [self nj_bundlePathForMonkeyAppWithName:bundleName];
    }
    return path;
}

///  获取MonkeyApp的bundle的路径
/// @param bundleName bundle的名称
/// @return 返回bundle的路径
+ (NSString *_Nullable)nj_bundlePathForMonkeyAppWithName:(NSString *)bundleName {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:bundleName ofType:nil];
    if (bundlePath.length == 0) {
        return nil;
    }
    return bundlePath;
}

/// 获取Tweak的bundle的路径
/// @param bundleName bundle的名称
/// @return 返回bundle的路径
+ (NSString *)nj_bundlePathForTweakWithName:(NSString *)bundleName {
    return [NJ_TWEAK_ASSET_MAIN_PATH stringByAppendingPathComponent:bundleName];
}

@end
