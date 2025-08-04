//
//  UIColor+NJColor.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import "UIColor+NJColor.h"

@implementation UIColor (NJColor)

/// 创建适配主题的 UIColor 对象
/// - Parameters:
///   - light: 日间模式颜色
///   - dark: 夜间模式颜色
+ (UIColor *)nj_colorWithLight:(UIColor *)light
                          dark:(UIColor *)dark {
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor *(UITraitCollection *tc) {
            return (tc.userInterfaceStyle == UIUserInterfaceStyleDark) ? dark : light;
        }];
    } else {
        return light;
    }
}

+ (UIColor *)nj_colorWithRed:(NSInteger)red
                       green:(NSInteger)green
                        blue:(NSInteger)blue
                       alpha:(CGFloat)alpha
{
    // 使用 MIN/MAX 做止损（clamp），防止越界
    red   = MIN(MAX(red,   0), 255);
    green = MIN(MAX(green, 0), 255);
    blue  = MIN(MAX(blue,  0), 255);

    alpha = MIN(MAX(alpha, 0.0f), 1.0f);

    return [UIColor colorWithRed:(red   / 255.0f)
                           green:(green / 255.0f)
                            blue:(blue  / 255.0f)
                           alpha:alpha];
}

+ (UIColor *)nj_colorWithRed:(NSInteger)red
                       green:(NSInteger)green
                        blue:(NSInteger)blue
{
    return [self nj_colorWithRed:red green:green blue:blue alpha:1.0f];
}

+ (UIColor *)nj_colorWithHex:(uint32_t)hex alpha:(CGFloat)alpha {
    CGFloat red   = ((hex & 0xFF0000) >> 16) / 255.0;
    CGFloat green = ((hex & 0x00FF00) >> 8)  / 255.0;
    CGFloat blue  = (hex & 0x0000FF)         / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)nj_colorWithHex:(uint32_t)hex {
    return [self nj_colorWithHex:hex alpha:1.0f];
}

+ (nullable UIColor *)nj_colorWithHexString:(NSString *)hexString {
    NSCParameterAssert(hexString);
    NSString *str = [[hexString stringByTrimmingCharactersInSet:
                      [NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([str hasPrefix:@"#"]) str = [str substringFromIndex:1];
    
    NSUInteger len = str.length;
    uint32_t hex = 0;
    if (len == 3 || len == 4 || len == 6 || len == 8) {
        // Expand shorthand (RGB/A)
        if (len < 5) { // 3 or 4
            NSMutableString *m = [NSMutableString new];
            for (NSUInteger i = 0; i < len; i++) {
                unichar c = [str characterAtIndex:i];
                [m appendFormat:@"%C%C", c, c];
            }
            str = [m copy]; len = str.length;
        }
        // Now len == 6 or 8
        NSScanner *scanner = [NSScanner scannerWithString:str];
        if (![scanner scanHexInt:&hex]) return nil;
    } else {
        return nil; // 不支持其他格式
    }

    CGFloat alpha, red, green, blue;
    if (len == 8) {
        alpha = ((hex >> 24) & 0xFF) / 255.0;
        red   = ((hex >> 16) & 0xFF) / 255.0;
        green = ((hex >>  8) & 0xFF) / 255.0;
        blue  = ( hex        & 0xFF) / 255.0;
    } else { // len == 6
        alpha = 1.0;
        red   = ((hex >> 16) & 0xFF) / 255.0;
        green = ((hex >>  8) & 0xFF) / 255.0;
        blue  = ( hex        & 0xFF) / 255.0;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (nullable UIColor *)nj_colorWithRGBAString:(NSString *)rgbaString {
    NSArray<NSString *> *parts = [[rgbaString stringByTrimmingCharactersInSet:
                        [NSCharacterSet whitespaceCharacterSet]] componentsSeparatedByString:@","];
    if (parts.count < 3 || parts.count > 4) {
        return nil;
    }
    BOOL valid = YES;
    CGFloat comps[4] = {0,0,0,1};
    for (int i = 0; i < parts.count && valid; i++) {
        NSString *s = [parts[i] stringByTrimmingCharactersInSet:
                     [NSCharacterSet whitespaceCharacterSet]];
        NSInteger iv = [s integerValue];
        if (i < 3) {
            if (iv < 0 || iv > 255) valid = NO;
            comps[i] = iv / 255.0f;
        } else {
            CGFloat f = [s doubleValue];
            valid = (f >= 0 && f <= 1);
            comps[3] = f;
        }
    }
    if (!valid) return nil;
    return [UIColor colorWithRed:comps[0]
                           green:comps[1]
                            blue:comps[2]
                           alpha:comps[3]];
}


@end
