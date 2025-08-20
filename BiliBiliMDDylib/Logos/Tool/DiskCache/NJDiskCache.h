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

@end

NS_ASSUME_NONNULL_END


