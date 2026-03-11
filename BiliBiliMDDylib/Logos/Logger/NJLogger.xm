// b站日志
// 日志沙盒路径：/library/caches/logs

/*
 调用堆栈：
 -[BFCLogMMapHandle writeData:ddError:]
 -[BFCLogFileHandle writeData:ddError:]
 -[DDFileLogger lt_logData:]
 -[DDFileLogger logMessage:]
 -[DDLog lt_log:]
 -[DDLog log:level:flag:context:file:function:line:tag:format:args:]
 -[BFCLogEngine log:level:flag:file:function:line:tag:format:args:]
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

/*
%hook DDLog

// 从这里将b站日志写入终端
// log: 日志是否异步写入沙盒
- (void)log:(_Bool)log message:(id)message level:(unsigned long long)level flag:(unsigned long long)flag context:(long long)context file:(const char *)file function:(const char *)function line:(unsigned long long)line tag:(id)tag {
    NSString *fileStr = file ? [NSString stringWithUTF8String:file] : nil;
    NSString *funcStr = function ? [NSString stringWithUTF8String:function] : nil;

    NSLog(@"%@:log=%d message=%@ level=%llu flag=%llu context=%lld file=%@ function=%@ line=%llu tag=%@",
          nj_logPrefix,
          log,
          message,
          level,
          flag,
          context,
          fileStr,
          funcStr,
          line,
          tag);
    
    %orig;
}

- (void)lt_log:(id)lt_log {
//    NSLog(@"%@:lt_log:%@", nj_logPrefix, lt_log);
    // cxzcxz:lt_log:<DDLogMessage: 0x280640e80>
    %orig;
}


%end
 


%hook BFCLogMMapHandle

- (void)writeData:(id)data ddError:(id *)error {
//    NSLog(@"%@:data:%@", nj_logPrefix, data);
    %orig;
}

%end

@interface BFCLogFileHandleOptions : NSObject

/// 模式 0 = 系统FileHandle， 1 = MemoryMap（内存映射）
@property (nonatomic) unsigned long long mode;
/// 是否压缩，如果选择压缩，会有密码
@property (nonatomic) _Bool zip;

@end

%hook BFCLogFileHandleOptions

%new
- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p; mode=%llu; zip=%@>",
            NSStringFromClass([self class]),
            self,
            self.mode,
            self.zip ? @"YES" : @"NO"];
}

%end

%hook BFCLogFileHandle

+ (id)fileHandleWithSystemFileHandle:(id)handle options:(BFCLogFileHandleOptions *)options logFileManager:(id)manager {
    // 不要压缩日志
    options.zip = NO;
    return %orig;
}

%end
 */
