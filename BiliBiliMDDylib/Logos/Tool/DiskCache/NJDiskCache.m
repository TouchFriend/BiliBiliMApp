//
//  NJDiskCache.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/11.
//

#import "NJDiskCache.h"
#import "NSDate+NJCategory.h"

// 沙盒缓存文件夹
NSString *const NJDiskCacheDirName = @"NJCache";

@interface NJDiskCache ()

@property (nonatomic, assign) NSUInteger maxFileCount;
@property (nonatomic, copy) NSString *filePrefix;
@property (nonatomic, copy) NSString *folderName;
@property (nonatomic, copy) NSString *cacheDirectory;
@property (nonatomic, strong) dispatch_queue_t ioQueue;

@end

@implementation NJDiskCache

- (instancetype)initWithMaxFileCount:(NSUInteger)maxFileCount
                          filePrefix:(NSString *)filePrefix
                          folderName:(NSString *)folderName {
    if (self = [super init]) {
        _maxFileCount = maxFileCount;
        _filePrefix = filePrefix ?: @"";
        _folderName = folderName ?: @"DefaultCache";
        
        // 获取 Caches 路径
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
        NSString *cachesPath = [paths firstObject];
        
        // 拼接 NJCache/<folderName> 路径
        NSString *homeCachePath = [cachesPath stringByAppendingPathComponent:
                                   [NSString stringWithFormat:@"%@/%@", NJDiskCacheDirName, _folderName]];
        _cacheDirectory = homeCachePath;
        
        // 创建目录
        NSFileManager *fm = [NSFileManager defaultManager];
        if (![fm fileExistsAtPath:homeCachePath]) {
            NSError *error = nil;
            [fm createDirectoryAtPath:homeCachePath
           withIntermediateDirectories:YES
                            attributes:nil
                                 error:&error];
            if (error) {
                NSLog(@"创建缓存目录失败: %@", error.localizedDescription);
            }
        }
        
        // 串行队列
        _ioQueue = dispatch_queue_create("com.njdiskcache.queue", DISPATCH_QUEUE_SERIAL);
    }
    return self;
}

- (void)saveDataToDisk:(NSData *)data {
    if (!data) return;
    
    dispatch_async(self.ioQueue, ^{
        NSString *timestamp = [NSDate nj_currentTimestampString];
        // 文件名加 .txt 扩展名
        NSString *fileName = [NSString stringWithFormat:@"%@_%@.txt", self.filePrefix, timestamp];
        NSString *filePath = [self.cacheDirectory stringByAppendingPathComponent:fileName];
        
        NSError *writeError = nil;
        BOOL success = [data writeToFile:filePath options:NSDataWritingAtomic error:&writeError];
        if (!success) {
            NSLog(@"写入文件失败: %@", writeError.localizedDescription);
            return;
        }
        
        [self trimCacheIfNeeded];
    });
}

/// 删除超出数量限制的最旧文件
- (void)trimCacheIfNeeded {
    NSFileManager *fm = [NSFileManager defaultManager];
    NSError *error = nil;
    NSArray<NSString *> *files = [fm contentsOfDirectoryAtPath:self.cacheDirectory error:&error];
    if (error) {
        NSLog(@"读取缓存目录失败: %@", error.localizedDescription);
        return;
    }
    
    if (files.count <= self.maxFileCount) return;
    
    NSMutableArray<NSDictionary *> *fileInfos = [NSMutableArray array];
    for (NSString *fileName in files) {
        NSString *fullPath = [self.cacheDirectory stringByAppendingPathComponent:fileName];
        NSDictionary *attrs = [fm attributesOfItemAtPath:fullPath error:nil];
        NSDate *createDate = attrs[NSFileCreationDate] ?: [NSDate distantPast];
        [fileInfos addObject:@{@"path": fullPath, @"date": createDate}];
    }
    
    // 按时间升序排列（旧的在前）
    [fileInfos sortUsingComparator:^NSComparisonResult(NSDictionary *obj1, NSDictionary *obj2) {
        return [obj1[@"date"] compare:obj2[@"date"]];
    }];
    
    // 删除多余文件
    NSUInteger excessCount = fileInfos.count - self.maxFileCount;
    for (NSUInteger i = 0; i < excessCount; i++) {
        NSString *path = fileInfos[i][@"path"];
        [fm removeItemAtPath:path error:nil];
    }
}

@end

