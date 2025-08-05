//
//  UIImage+NJCategory.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/4.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (NJCategory)

- (UIImage *)nj_imageWithTintColor:(UIColor *)color;

+ (UIImage *)nj_imageWithColor:(UIColor *)color
                          size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
