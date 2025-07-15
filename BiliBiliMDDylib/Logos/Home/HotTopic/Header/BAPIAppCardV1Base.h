//
//  BAPIAppCardV1Base.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/15.
//

#ifndef BAPIAppCardV1Base_h
#define BAPIAppCardV1Base_h

#import <UIKit/UIKit.h>

@interface BAPIAppCardV1Base : NSObject

@property (copy, nonatomic) NSString *fromType;
/// 是否有广告信息
@property (nonatomic) _Bool hasAdInfo;


@end

#endif /* BAPIAppCardV1Base_h */
