//
//  NJMineDataHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJMineDataHandler : NSObject

- (instancetype)init;

/// 处理数据
/// - Parameter tabData: 要处理的数据
/// @return 处理后的数据
- (NSArray *)handleData:(NSArray *)mineData;

@end

NS_ASSUME_NONNULL_END
