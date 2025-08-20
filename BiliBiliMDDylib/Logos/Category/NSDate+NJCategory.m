//
//  NSDate+NJCategory.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/20.
//

#import "NSDate+NJCategory.h"

@implementation NSDate (NJCategory)

/// 获取当前毫秒级时间戳字符串（格式：yyyy-MM-dd-HH:mm:ss-SSS）
+ (NSString *)nj_currentTimestampString {
    NSDate *now = [NSDate date];
    
    // 格式化到秒
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd-HH:mm:ss";
    NSString *timePart = [formatter stringFromDate:now];
    
    // 毫秒部分
    long long milliseconds = (long long)([now timeIntervalSince1970] * 1000) % 1000;
    
    return [NSString stringWithFormat:@"%@-%03lld", timePart, milliseconds];
}

@end
