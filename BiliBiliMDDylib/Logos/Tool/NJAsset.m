//
//  NJAsset.m
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2025/8/4.
//

#import "NJAsset.h"
#import "NSBundle+NJBundleCategory.h"
#import "NSBundle+NJImageLoading.h"


@implementation NJAsset


/// 获取图片资源路径
/// @param name 图片名称，比如skull.png
/// @return 返回图片资源路径
+ (nullable NSString *)pathForImageAsset:(NSString *)name {
    return [self pathForImageAsset:name
                       inDirectory:nil];
}

/// 获取图片资源路径
/// @param name 图片名称，比如skull.png
/// @param subpath 存放图片的文件夹
/// @return 返回图片资源路径
+ (nullable NSString *)pathForImageAsset:(NSString *)name
                             inDirectory:(nullable NSString *)subpath {
    return [self pathForImageAsset:name
                            ofType:nil
                       inDirectory:subpath];
}

/// 获取图片资源路径
/// @param name 图片名称
/// @param ext 图片类型
/// @param subpath 图片所在文件夹
/// @return 返回图片资源路径
+ (nullable NSString *)pathForImageAsset:(NSString *)name
                                  ofType:(nullable NSString *)ext
                             inDirectory:(nullable NSString *)subpath {
    NSBundle *bundle = [NSBundle nj_mainBundle];
    return [bundle nj_pathForImageResource:name
                                    ofType:ext
                               inDirectory:subpath];
}

/// 获取资源路径
/// @param name 资源名称
/// @return 返回资源路径
+ (nullable NSString *)pathForAsset:(nullable NSString *)name {
    return [self pathForAsset:name
                       ofType:nil];
}

/// 获取资源路径
/// - Parameters:
///   - name: 资源名称
///   - ext: 资源类型
///   @return 返回资源路径
+ (nullable NSString *)pathForAsset:(nullable NSString *)name
                             ofType:(nullable NSString *)ext {
    return [self pathForAsset:name
                       ofType:ext
                  inDirectory:nil];
}


/// 获取资源路径
/// - Parameters:
///   - name: 资源名称
///   - ext: 资源类型
///   - subpath: 资源所在文件夹
///   @return 返回资源路径
+ (nullable NSString *)pathForAsset:(nullable NSString *)name
                             ofType:(nullable NSString *)ext
                        inDirectory:(nullable NSString *)subpath {
    NSBundle *bundle = [NSBundle nj_mainBundle];
    return [bundle pathForResource:name
                            ofType:ext
                       inDirectory:subpath];
}

@end
