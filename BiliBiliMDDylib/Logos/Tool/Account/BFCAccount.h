//
//  BFCAccount.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

#import "BFCAccountSSOModel.h"
#import "BFCAccountUserModel.h"

/// b 站账号
@interface BFCAccount : NSObject

@property (retain) BFCAccountSSOModel *ssoModel;
@property (retain) BFCAccountUserModel *userModel;
@property (retain) BFCAccountUserModel *lastUserModel;

+ (id)currentSSO;
+ (id)currentUser;
+ (id)fastLoginModel;

/// 获取SESSDATA的cookie
+ (NSString *)nj_getCookieSESSDATA;

/// 获取bili_jct的cookie
+ (NSString *)nj_getCookieBiliJct;

/// 获取accessKey
+ (NSString *)nj_accessKey;

/// 是否已经登录
+ (BOOL)nj_isLogin;

// 是否是大会员
+ (BOOL)nj_isVip;

@end
