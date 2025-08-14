//
//  NJDiskCache.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJDiskCache : NSObject

/// 初始化方法
/// @param maxFileCount 最大缓存文件个数
/// @param filePrefix   文件名前缀
/// @param folderName   缓存文件夹名称
- (instancetype)initWithMaxFileCount:(NSUInteger)maxFileCount
                          filePrefix:(NSString *)filePrefix
                          folderName:(NSString *)folderName;

/// 保存数据到磁盘（异步串行）
- (void)saveDataToDisk:(NSData *)data;

/// 获取当前毫秒级时间戳字符串（格式：yyyy-MM-dd-HH:mm:ss-SSS）
- (NSString *)currentTimestampString;

@end

NS_ASSUME_NONNULL_END


