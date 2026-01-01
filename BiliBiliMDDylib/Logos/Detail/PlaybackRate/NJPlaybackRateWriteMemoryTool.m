//
//  NJPlaybackRateWriteMemoryTool.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/1.
//

#import "NJPlaybackRateWriteMemoryTool.h"
#import "NJChangePlaybackRateTool.h"

// 播放速度-目标固定16字节数据块
const size_t NJ_RATE_BLOCK_SIZE = 16;

@interface NJPlaybackRateWriteMemoryTool ()

@end

@implementation NJPlaybackRateWriteMemoryTool

#pragma mark - Life Cycle Methods


#pragma mark - Do Init

- (void)doInit {
    
}

#pragma mark - Override Methods

#pragma mark - Public Methods

/// 将速度写入到内存地址
/// - Parameter baseAddress: 起始内存地址
- (void)write_rate_to_address:(uintptr_t)baseAddress {
    NSArray<NSString *> *playbackRates = [NJChangePlaybackRateTool playbackRates];
    NSInteger count = playbackRates.count;
    for (NSInteger i = 0; i < count; i++) {
        uintptr_t currentAddress = baseAddress + i * NJ_RATE_BLOCK_SIZE;
        [self write_rate_string_to_address:currentAddress str:playbackRates[i]];
    }
}

/// 将速度写入到内存地址
/// - Parameters:
///   - dest_addr: 目标内存地址
///   - str: 速度字符串，比如"1.0"
- (int)write_rate_string_to_address:(uintptr_t)dest_addr
                                str:(NSString *)str {
    if (str == nil) {
        return -1;
    }
    // 地址有效性判断
    if (dest_addr == 0) {
        return -1;
    }

    // UTF8 字符串
    const char *utf8Str = [str UTF8String];
    size_t strLength = strlen(utf8Str);   // 字符数（不含 \0）

    if (strLength > (NJ_RATE_BLOCK_SIZE - 1)) {
        // 只能容纳前15字节 + 最后一字节用于 E0+strLength
        strLength = NJ_RATE_BLOCK_SIZE - 1;
    }

    uint8_t block[NJ_RATE_BLOCK_SIZE];
    memset(block, 0, NJ_RATE_BLOCK_SIZE);

    // 前 strLength 字节写入字符串
    memcpy(block, utf8Str, strLength);

    // 最后一个字节写入：E0 + 长度
    block[NJ_RATE_BLOCK_SIZE - 1] = 0xE0 + (uint8_t)strLength;

    // 将 block 写到目标地址
    memcpy((void *)dest_addr, block, NJ_RATE_BLOCK_SIZE);

    return 0;
}

#pragma mark - Private Methods

#pragma mark - Property Methods

@end
