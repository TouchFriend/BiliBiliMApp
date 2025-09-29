//
//  NSBundle+NJBundleCategory.m
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/9/29.
//

#import "NSBundle+NJBundleCategory.h"
#import "NSBundle+NJLoadBundle.h"

// NJMainBundle的名称
NSString *const NJMainBundleName = @"NJBilibili.bundle";

@implementation NSBundle (NJBundleCategory)

/// 获取NJMainBundle
/// @return 返回NJMainBundle
+ (NSBundle *_Nullable)nj_mainBundle {
    static NSBundle *bundle = nil;
    if (!bundle) {
        NSString *bundlePath = [self nj_bundlePathWithName:NJMainBundleName];
        if (bundlePath.length > 0) {
            bundle = [[NSBundle alloc] initWithPath:bundlePath];
        }
    }
    return bundle;
}

@end
