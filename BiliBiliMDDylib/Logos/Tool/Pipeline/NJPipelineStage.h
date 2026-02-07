//
//  NJPipelineStage.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NJPipelineStage <NSObject>

+ (instancetype)alloc;

/// 处理输入并返回输出
/// - Parameters:
///   - input: 上一个阶段的输出
///   - error: 出错时返回 error
- (nullable id)processInput:(nullable id)input error:(NSError **_Nullable)error;

@end

NS_ASSUME_NONNULL_END
