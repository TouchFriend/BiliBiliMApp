//
//  BFCAccountHTTPCookie.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

@interface BFCAccountHTTPCookie : NSObject

@property (readonly, copy, nonatomic) NSString *name;
@property (readonly, copy, nonatomic) NSString *value;
@property (readonly, nonatomic) int httpOnly;
@property (readonly, nonatomic) long long expires;
@property (readonly, nonatomic) int secure;

@end
