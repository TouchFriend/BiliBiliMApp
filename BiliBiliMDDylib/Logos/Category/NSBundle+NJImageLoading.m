//
//  NSBundle+NJImageLoading.m
//  OCTestProduct
//
//  Created by touchWorld on 2025/8/14.
//

#import "NSBundle+NJImageLoading.h"



@implementation NSBundle (NJImageLoading)


/// 从bundle获取图片路径
/// @param name 图片名称，比如skull.png
/// @return 图片路径
- (nullable NSString *)nj_pathForImageResource:(NSString *)name {
    return [self nj_pathForImageResource:name
                             inDirectory:nil];
}

/// 从bundle获取图片路径
/// @param name 图片名称，比如skull.png
/// @param directory 存放图片的文件夹
/// @return 图片路径
- (nullable NSString *)nj_pathForImageResource:(NSString *)name
                                   inDirectory:(nullable NSString *)directory {
    return [self nj_pathForImageResource:name
                                  ofType:nil
                             inDirectory:directory];
}

/// 从bundle获取图片路径
///
/// 会根据当前分辨率获取图片路径，比如当前分辨率为3，会获取@3x 的图片路径。
///
/// 如果没有当前分辨率的图片，优先获取高分辨率的图片，然后是获取低分辨率的图片。也就是（当前分辨率 → 高分辨率 → 低分辨率）。
/// 比如当前屏幕分辨率为2，会依次获取@2x、@3x、@1x的图片路径。
/// - Parameters:
///   - name: 图片名称，比如skull
///   - type: 图片类型，比如png
///   - directory: 存放图片的文件夹
///   @return 图片路径
- (nullable NSString *)nj_pathForImageResource:(NSString *)name
                                        ofType:(nullable NSString *)type
                                   inDirectory:(nullable NSString *)directory {
    if (type.length == 0) {
        type = [name pathExtension];
        name = [name stringByDeletingPathExtension];
    }
    return [self nj_internalPathForImageResource:name
                                          ofType:type
                                     inDirectory:directory];
}


/// 从bundle获取图片路径
///
/// 会根据当前分辨率获取图片路径，比如当前分辨率为3，会获取@3x 的图片路径。
///
/// 如果没有当前分辨率的图片，优先获取高分辨率的图片，然后是获取低分辨率的图片。也就是（当前分辨率 → 高分辨率 → 低分辨率）。
/// 比如当前屏幕分辨率为2，会依次获取@2x、@3x、@1x的图片路径。
/// - Parameters:
///   - name: 图片名称，比如skull
///   - type: 图片类型，比如png
///   - directory: 存放图片的文件夹
///   @return 图片路径
- (nullable NSString *)nj_internalPathForImageResource:(nullable NSString *)name
                                                ofType:(nullable NSString *)type
                                           inDirectory:(nullable NSString *)directory {
    // 获取设备分辨率（1x, 2x, 3x, ...）
    CGFloat scale = [UIScreen mainScreen].scale;
    int currentScale = (int)scale;
    const int maxScale = 3; // 最高分辨率限制为 @3x
    
    // 动态生成后缀数组：当前分辨率 -> 高分辨率 -> 低分辨率
    NSMutableArray *suffixes = [NSMutableArray array];
    
    // 1. 添加当前分辨率
    if (currentScale >= 2) {
        [suffixes addObject:[NSString stringWithFormat:@"@%dx", currentScale]];
    } else {
        [suffixes addObject:@""]; // 1x 无后缀
    }
    
    // 2. 添加高分辨率（从 currentScale+1 到 maxScale）
    for (int i = currentScale + 1; i <= maxScale; i++) {
        [suffixes addObject:[NSString stringWithFormat:@"@%dx", i]];
    }
    
    // 3. 添加低分辨率（从 currentScale-1 到 1x）
    for (int i = currentScale - 1; i >= 1; i--) {
        if (i >= 2) {
            [suffixes addObject:[NSString stringWithFormat:@"@%dx", i]];
        } else {
            [suffixes addObject:@""]; // 1x 无后缀
        }
    }
    
    // 遍历后缀，优先选择当前分辨率 -> 高分辨率 -> 低分辨率
    for (NSString *suffix in suffixes) {
        NSString *resourceName = [NSString stringWithFormat:@"%@%@", name, suffix];
        NSString *path = [self pathForResource:resourceName ofType:type inDirectory:directory];
        if (path) {
            return path;
        }
    }
    
    return nil; // 未找到任何匹配的图片
}


@end
