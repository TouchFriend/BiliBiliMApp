//
//  UIImage+NJCategory.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import "UIImage+NJCategory.h"
#import <CoreGraphics/CoreGraphics.h>

@implementation UIImage (NJCategory)

- (UIImage *)nj_imageWithTintColor:(UIColor *)color {
    if (@available(iOS 13.0, *)) {
        return [self imageWithTintColor:color];
    } else {
        CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
        UIGraphicsBeginImageContextWithOptions(rect.size, NO, self.scale);
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextTranslateCTM(context, 0, self.size.height);
        CGContextScaleCTM(context, 1.0, -1.0);
        
        CGContextSetBlendMode(context, kCGBlendModeNormal);
        CGContextDrawImage(context, rect, self.CGImage);
        
        CGContextSetBlendMode(context, kCGBlendModeSourceIn);
        [color setFill];
        CGContextFillRect(context, rect);
        
        UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return tintedImage;
    }
}

+ (UIImage *)nj_imageWithColor:(UIColor *)color
                          size:(CGSize)size {
    UIGraphicsImageRenderer *renderer = [[UIGraphicsImageRenderer alloc] initWithSize:size];
    UIImage *image = [renderer imageWithActions:^(UIGraphicsImageRendererContext * _Nonnull context) {
        [color setFill];
        [context fillRect:CGRectMake(0, 0, size.width, size.height)];
    }];
    return image;
}

@end
