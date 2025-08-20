//
//  NSDate+NJCategory.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (NJCategory)

/// 获取当前毫秒级时间戳字符串（格式：yyyy-MM-dd-HH:mm:ss-SSS）
+ (NSString *)nj_currentTimestampString;

@end

NS_ASSUME_NONNULL_END
