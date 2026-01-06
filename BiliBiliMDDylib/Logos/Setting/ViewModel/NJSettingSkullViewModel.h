//
//  NJSettingSkullViewModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingSkullViewModel : NSObject

/// 业务id
@property (nonatomic, copy) NSString *bizId;
/// cell重利用Id
@property (nonatomic, copy) NSString *cellId;
/// 标题
@property (nonatomic, copy) NSString *title;
/// 副标题
@property (nonatomic, copy) NSString *subTitle;


- (instancetype)initWithBizId:(NSString *)bizId
                       cellId:(NSString *)cellId
                        title:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
