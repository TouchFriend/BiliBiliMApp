//
//  NJPlaybackRateWriteMemoryTool.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJPlaybackRateWriteMemoryTool : NSObject

/// 将速度写入到内存地址
/// - Parameter baseAddress: 起始内存地址
- (void)write_rate_to_address:(uintptr_t)baseAddress;

/// 将速度写入到内存地址
/// - Parameters:
///   - dest_addr: 目标内存地址
///   - str: 速度字符串，比如"1.0"
- (int)write_rate_string_to_address:(uintptr_t)dest_addr
                                str:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
