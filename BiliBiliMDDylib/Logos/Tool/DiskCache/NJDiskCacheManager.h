//
//  NJDiskCacheManager.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/11.
//

#import <Foundation/Foundation.h>
#import "NJCommonDefine.h"
#import "NJDiskCache.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJDiskCacheManager : NSObject

/// 首页缓存
@property (nonatomic, strong, readonly) NJDiskCache *homeCache;

NJ_SINGLETON_H(Manager)

@end

NS_ASSUME_NONNULL_END
