//
//  NJDailyTaskManager.h
//  BiliBiliMDDylib
//
//  Created by touchWorld on 2026/3/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 每日任务工具
@interface NJDailyTaskManager : NSObject

+ (instancetype)shared;

/// 是否可以执行每日任务
- (BOOL)canRunTask:(NSString *)taskKey;

/// 标记任务完成
- (void)markTaskDone:(NSString *)taskKey;

/// 重置任务
- (void)resetTask:(NSString *)taskKey;

@end

NS_ASSUME_NONNULL_END
