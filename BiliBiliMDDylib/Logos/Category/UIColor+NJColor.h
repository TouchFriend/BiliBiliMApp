//
//  UIColor+NJColor.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (NJColor)

/// 创建适配主题的 UIColor 对象
/// - Parameters:
///   - light: 日间模式颜色
///   - dark: 夜间模式颜色
+ (UIColor *)nj_colorWithLight:(UIColor *)light
                          dark:(UIColor *)dark;

/**
 * 使用 Red、Green、Blue 的整数输入和 alpha 浮点创建 UIColor。
 *
 * @param red   红色分量（0–255）
 * @param green 绿色分量（0–255）
 * @param blue  蓝色分量（0–255）
 * @param alpha 透明度（0.0–1.0）
 */
+ (UIColor *)nj_colorWithRed:(NSInteger)red
                       green:(NSInteger)green
                        blue:(NSInteger)blue
                       alpha:(CGFloat)alpha;

/**
 * 使用 Red、Green、Blue整数创建不透明 UIColor（alpha = 1.0）。
 *
 * @param red   红色分量（0–255）
 * @param green 绿色分量（0–255）
 * @param blue  蓝色分量（0–255）
 */
+ (UIColor *)nj_colorWithRed:(NSInteger)red
                       green:(NSInteger)green
                        blue:(NSInteger)blue;

/// 用整数(0xRRGGBB) + alpha 创建 UIColor
+ (UIColor *)nj_colorWithHex:(uint32_t)hex
                    alpha:(CGFloat)alpha;

/// 用不带 alpha 的 Hex 整数 (0xRRGGBB)，默认 alpha = 1
+ (UIColor *)nj_colorWithHex:(uint32_t)hex;

/// 从 Hex 字符串 创建 UIColor（支持 #RGB,#ARGB,#RRGGBB,#AARRGGBB），alpha 可选
+ (nullable UIColor *)nj_colorWithHexString:(NSString *)hexString;

/// 从 Comma 分隔的 “R,G,B,A” 或 “R,G,B” 字符串创建颜色
+ (nullable UIColor *)nj_colorWithRGBAString:(NSString *)rgbaString;

@end

NS_ASSUME_NONNULL_END
