//
//  NJStoryDataDispatcherStage.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import <Foundation/Foundation.h>
#import "NJPipelineStage.h"

NS_ASSUME_NONNULL_BEGIN

/// 数据分发器
@interface NJStoryDataDispatcherStage : NSObject <NJPipelineStage>

- (void)doInit;

@end

NS_ASSUME_NONNULL_END
