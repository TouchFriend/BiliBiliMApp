//
//  NSBundle+NJCategory.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/14.
//

#import "NSBundle+NJCategory.h"

// bundle的名称
NSString *const NJBundleName = @"NJBilibili.bundle";
// 插件资源主路径
NSString *const NJTweakAssetMainPath = @"/Library/Caches/";

@implementation NSBundle (NJCategory)

/// 获取NJBilibili.bundle
/// @return 返回NJBilibili.bundle
+ (NSBundle *_Nullable)nj_bilibiliBundle {
    static NSBundle *bundle = nil;
    if (!bundle) {
        NSString *bundlePath = [self nj_bilibiliBundlePath];
        if (bundlePath.length > 0) {
            bundle = [[NSBundle alloc] initWithPath:bundlePath];
        }
    }
    return bundle;
}

/// 获取NJBilibili.bundle的路径
+ (NSString *_Nullable)nj_bilibiliBundlePath {
    NSString *path;
    // NJ_TWEAK是在工程中添加的宏，类似DEBUG
#ifdef NJ_TWEAK
    path = [self nj_bilibiliBundlePathForTweak];
#else
    path = [self nj_bilibiliBundlePathForMonkeyApp];
#endif
    return path;
}

/// 获取MonkeyApp的NJBilibili.bundle的路径
+ (NSString *_Nullable)nj_bilibiliBundlePathForMonkeyApp {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:NJBundleName ofType:nil];
    if (bundlePath.length == 0) {
        return nil;
    }
    return bundlePath;
}

/// 获取Tweak的NJBilibili.bundle的路径
+ (NSString *)nj_bilibiliBundlePathForTweak {
    return [NJTweakAssetMainPath stringByAppendingPathComponent:NJBundleName];
}

@end
