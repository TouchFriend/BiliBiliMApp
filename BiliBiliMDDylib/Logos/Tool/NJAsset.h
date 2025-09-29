//
//  NJAsset.h
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/8/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface NJAsset : NSObject


/// 获取图片资源路径
/// @param name 图片名称，比如skull.png
/// @return 返回图片资源路径
+ (nullable NSString *)pathForImageAsset:(NSString *)name;

/// 获取图片资源路径
/// @param name 图片名称，比如skull.png
/// @param subpath 存放图片的文件夹
/// @return 返回图片资源路径
+ (nullable NSString *)pathForImageAsset:(NSString *)name
                             inDirectory:(nullable NSString *)subpath;

/// 获取图片资源路径
/// @param name 图片名称
/// @param ext 图片类型
/// @param subpath 图片所在文件夹
/// @return 返回图片资源路径
+ (nullable NSString *)pathForImageAsset:(NSString *)name
                                  ofType:(nullable NSString *)ext
                             inDirectory:(nullable NSString *)subpath;


/// 获取资源路径
/// @param name 资源名称
/// @return 返回资源路径
+ (nullable NSString *)pathForAsset:(nullable NSString *)name;

/// 获取资源路径
/// - Parameters:
///   - name: 资源名称
///   - ext: 资源类型
///   @return 返回资源路径
+ (nullable NSString *)pathForAsset:(nullable NSString *)name
                             ofType:(nullable NSString *)ext;

/// 获取资源路径
/// - Parameters:
///   - name: 资源名称
///   - ext: 资源类型
///   - subpath: 资源所在文件夹
///   @return 返回资源路径
+ (nullable NSString *)pathForAsset:(nullable NSString *)name
                             ofType:(nullable NSString *)ext
                        inDirectory:(nullable NSString *)subpath;

@end

NS_ASSUME_NONNULL_END
