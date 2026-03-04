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
+ (NSString *)getCookieSESSDATA;

/// 获取bili_jct的cookie
+ (NSString *)getCookieBiliJct;

/// 获取accessKey
+ (NSString *)accessKey;

@end
