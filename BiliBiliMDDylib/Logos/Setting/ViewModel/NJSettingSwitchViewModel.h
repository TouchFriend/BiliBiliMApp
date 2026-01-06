//
//  NJSettingSwitchViewModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/6.
//

#import "NJSettingSkullViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingSwitchViewModel : NJSettingSkullViewModel

/// 是否开启开关
@property (nonatomic, assign) BOOL on;
/// 保存用的可以
@property (nonatomic, copy) NSString *saveKey;


- (instancetype)initWithBizId:(NSString *)bizId
                       cellId:(NSString *)cellId
                        title:(NSString *)title
                           on:(BOOL)on
                      saveKey:(NSString *)saveKey;

@end

NS_ASSUME_NONNULL_END
