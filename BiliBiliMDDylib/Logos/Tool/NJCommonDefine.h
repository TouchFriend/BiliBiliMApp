//
//  NJCommonDefine.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/6/13.
//

#import <UIKit/UIKit.h>
#import "NJAsset.h"
#import "NJCommonDefineForSwift.h"

NS_ASSUME_NONNULL_BEGIN


/// UserDefaults
#define NJ_USER_DEFAULTS [NSUserDefaults standardUserDefaults]
/// 图片资源路径
#define NJ_IMAGE_ASSET_PATH(path) [NJAsset pathForImageAsset:path]
/// 资源路径
#define NJ_ASSET_PATH(path) [NJAsset pathForAsset:path]

/// --------------------- 用户信息 ---------------------
/// BFCUserModel
/// BFCAccountUserModel

@interface BFCAccountUserModel : NSObject

@property (nonatomic) long long mid;
@property (copy, nonatomic) NSString *name;

@end

@interface BBMallAccountManager : NSObject

@property (readonly, nonatomic) BFCAccountUserModel *userModel;
@property (readonly, copy, nonatomic) NSString *userId;

+ (id)defaultManager;

@end

#define NJ_MID [[[NSClassFromString(@"BBMallAccountManager") defaultManager] userModel] mid]
#define NJ_MID_STR [NSString stringWithFormat:@"%lld", NJ_MID]

#define NJ_UID NJ_MID
#define NJ_UID_STR NJ_MID_STR

/// --------------------- 用户信息 ---------------------



/// --------------------- 设置页面 ---------------------
/// 总开关
#define NJ_MASTER_SWITCH_KEY @"NJJB_MASTER_SWITCH_KEY"
/// 总开关的值
#define NJ_MASTER_SWITCH_VALUE (![NJ_USER_DEFAULTS objectForKey:NJ_MASTER_SWITCH_KEY] || \
[NJ_USER_DEFAULTS boolForKey:NJ_MASTER_SWITCH_KEY])

/// --------------------- 设置页面 ---------------------

/// --------------------- 单例 ---------------------

// .h头文件中的单例宏
#define NJ_SINGLETON_H(name) \
+ (instancetype)shared##name;

// .m文件中的单例宏
#define NJ_SINGLETON_M(name) \
static id _instance; \
+ (instancetype)allocWithZone:(struct _NSZone *)zone { \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instance = [super allocWithZone:zone]; \
    }); \
    return _instance; \
} \
+ (instancetype)shared##name { \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instance = [[self alloc] init]; \
    }); \
    return _instance; \
} \
- (id)copyWithZone:(NSZone *)zone { \
    return _instance; \
} \
- (id)mutableCopyWithZone:(nullable NSZone *)zone { \
    return _instance; \
} \

/// --------------------- 单例 ---------------------

NS_ASSUME_NONNULL_END
