//
//  NSURL+NJPath.h
//  OCTestProduct
//
//  Created by touchWorld on 2025/7/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSURL (NJPath)


/// 获取URL的全部路径，
/// 比如：https://app.bilibili.com/x/v2/feed/index
- (NSString *)nj_fullPath;

@end

NS_ASSUME_NONNULL_END
