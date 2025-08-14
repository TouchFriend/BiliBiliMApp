//
//  NSBundle+NJImageLoading.h
//  OCTestProduct
//
//  Created by touchWorld on 2025/8/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (NJImageLoading)


/// 从bundle获取图片路径
/// @param name 图片名称，比如skull.png
/// @return 图片路径
- (nullable NSString *)nj_pathForImageResource:(NSString *)name;

/// 从bundle获取图片路径
/// @param name 图片名称，比如skull.png
/// @param directory 存放图片的文件夹
/// @return 图片路径
- (nullable NSString *)nj_pathForImageResource:(NSString *)name
                                   inDirectory:(nullable NSString *)directory;

/// 从bundle获取图片路径
///
/// 会根据当前分辨率获取图片路径，比如当前分辨率为3，会获取@3x 的图片路径。
///
/// 如果没有当前分辨率的图片，就获取低分辨率的图片，然后是获取高分辨率的图片，比如当前分辨率为2，
/// 会依次获取@2x、@1x、@3x的图片路径
/// - Parameters:
///   - name: 图片名称，比如skull
///   - type: 图片类型，比如png
///   - directory: 存放图片的文件夹
///   @return 图片路径
- (nullable NSString *)nj_pathForImageResource:(NSString *)name
                                        ofType:(nullable NSString *)type
                                   inDirectory:(nullable NSString *)directory;
@end

NS_ASSUME_NONNULL_END
