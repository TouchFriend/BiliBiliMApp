//
//  NJResponseModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJResponseModel : NSObject

/// 响应码
@property (nonatomic, assign) NSInteger code;
/// 消息
@property (nonatomic, copy) NSString *message;
/// 数据
@property (nonatomic, strong) NSDictionary *data;

@end

NS_ASSUME_NONNULL_END
