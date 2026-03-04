//
//  NJCouponInfo.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - NJExpParams

@interface NJExpParams : NSObject

/// 经验任务组标签（多个 tag 用逗号分隔）
@property (nonatomic, copy) NSString *exp_group_tag;

/// 命中值（完成条件对应值）
@property (nonatomic, assign) NSInteger hit_value;

@end


#pragma mark - NJCouponInfo

@interface NJCouponInfo : NSObject

/// 卡券类型编号（不同值代表不同福利类型）
@property (nonatomic, assign) NSInteger type;

/// 当前状态
/// 0 = 未兑换
/// 1 = 已兑换
/// 2 = 未完成（若需要完成）
@property (nonatomic, assign) NSInteger state;

/// 当前卡券过期时间（秒级时间戳）
@property (nonatomic, assign) NSInteger expire_time;

/// 当前会员类型
/// 0 = 非大会员
/// 1 = 月度大会员
/// 2 = 年度及以上大会员
@property (nonatomic, assign) NSInteger vip_type;

/// 距离下一次可领取剩余天数
@property (nonatomic, assign) NSInteger next_receive_days;

/// 当前周期结束 / 下一周期开始时间（秒级时间戳）
@property (nonatomic, assign) NSInteger period_end_unix;

/// 是否参与计数逻辑
@property (nonatomic, assign) BOOL is_count;

/// 卡券名称（可能为空）
@property (nonatomic, copy) NSString *name;

/// 卡券兑换码（可能为空）
@property (nonatomic, copy) NSString *coupon_code;

/// App 展示描述
@property (nonatomic, copy) NSString *app_describe;

/// 领取状态
/// 1 = 可领取
/// 2 = 条件未完成
@property (nonatomic, assign) NSInteger recive_state;

/// 奖励发放类型（内部逻辑字段，通常为 0）
@property (nonatomic, assign) NSInteger salary_type;

/// 扩展参数（接口可能返回 null 或额外字段）
@property (nonatomic, strong, nullable) NSDictionary *extra_params;

@end

NS_ASSUME_NONNULL_END
