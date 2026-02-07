//
//  NJStoryPipeline.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import "NJPipeline.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJStoryPipeline : NJPipeline

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)storyData;

@end

NS_ASSUME_NONNULL_END
