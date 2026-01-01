//
//  NJAppCompatibleDispatcher.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJAppCompatibleDispatcher : NSObject

/// ASLR
@property (nonatomic, assign, readonly) intptr_t aslr;

/// 构造器
/// - Parameter aslr: ASLR
- (instancetype)initWithAslr:(intptr_t)aslr;

/// 处理
- (void)handle;

@end

NS_ASSUME_NONNULL_END
