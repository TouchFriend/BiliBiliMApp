//
//  BFCAccountSSOModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

@interface BFCAccountCookieInfo : NSObject

@property (readonly, copy, nonatomic) NSArray *cookies;
@property (readonly, copy, nonatomic) NSArray *domains;

/* class methods */
+ (id)modelContainerPropertyGenericClass;

/* instance methods */

@end

@interface BFCAccountTokenInfo : NSObject

@property (readonly, nonatomic) long long mid;
@property (readonly, copy, nonatomic) NSString *accessToken;
@property (readonly, copy, nonatomic) NSString *refreshToken;
@property (readonly, copy, nonatomic) NSString *fastLoginToken;
@property (readonly, nonatomic) long long expiresIn;

/* class methods */
+ (id)modelCustomPropertyMapper;

/* instance methods */

@end

@interface BFCAccountSSOModel : NSObject

@property (readonly, nonatomic) BFCAccountTokenInfo *tokenInfo;
@property (readonly, nonatomic) BFCAccountCookieInfo *cookieInfo;
@property (readonly, copy, nonatomic) NSArray *sso;

/* class methods */
+ (id)modelCustomPropertyMapper;
+ (id)modelContainerPropertyGenericClass;

/* instance methods */

@end
