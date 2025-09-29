//
//  NSBundle+NJLoadBundle.h
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (NJLoadBundle)

/// 获取bundle的路径
/// - Parameter bundleName: bundle的名称
/// @return 返回bundle的路径
+ (NSString *_Nullable)nj_bundlePathWithName:(NSString *)bundleName;

///  获取MonkeyApp的bundle的路径
/// @param bundleName bundle的名称
/// @return 返回bundle的路径
+ (NSString *_Nullable)nj_bundlePathForMonkeyAppWithName:(NSString *)bundleName;

/// 获取Tweak的bundle的路径
/// @param bundleName bundle的名称
/// @return 返回bundle的路径
+ (NSString *)nj_bundlePathForTweakWithName:(NSString *)bundleName;

@end

NS_ASSUME_NONNULL_END
