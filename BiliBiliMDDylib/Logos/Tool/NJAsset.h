//
//  NJAsset.h
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/8/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface NJAsset : NSObject

/// 资源路径
/// - Parameter name: 资源名称
+ (NSString *)assetPathWithName:(NSString *)name;

/// 非越狱App的资源路径
/// - Parameter name: 资源名称
+ (NSString *)monkeyAppAssetPathWithName:(NSString *)name;

/// 插件的资源路径
/// - Parameter name: 资源名称
+ (NSString *)tweakAssetPathWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
