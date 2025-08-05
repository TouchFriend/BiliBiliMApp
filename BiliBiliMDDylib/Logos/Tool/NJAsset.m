//
//  NJAsset.m
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/8/4.
//

#import "NJAsset.h"
// bundle的名称
NSString *const NJBundleName = @"NJBilibili.bundle";
// 插件资源主路径
NSString *const NJTweakAssetMainPath = @"/Library/Caches/";

@implementation NJAsset

/// 资源路径
/// - Parameter name: 资源名称
+ (NSString *)assetPathWithName:(NSString *)name {
    NSString *path;
    // NJ_TWEAK是在工程中添加的宏，类似DEBUG
#ifdef NJ_TWEAK
    path = [self tweakAssetPathWithName:name];
#else
    path = [self monkeyAppAssetPathWithName:name];
#endif
    return path;
}

/// 非越狱App的资源路径
/// - Parameter name: 资源名称
+ (NSString *)monkeyAppAssetPathWithName:(NSString *)name {
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:NJBundleName ofType:nil];
    if (bundlePath.length == 0) {
        return nil;
    }
    NSString *assetPath = [bundlePath stringByAppendingPathComponent:name];
    return assetPath;
}

/// 插件的资源路径
/// - Parameter name: 资源名称
+ (NSString *)tweakAssetPathWithName:(NSString *)name {
    NSString *mainPath = [NJTweakAssetMainPath stringByAppendingPathComponent:NJBundleName];
    NSString *assetPath = [mainPath stringByAppendingPathComponent:name];
    return assetPath;
}

@end
