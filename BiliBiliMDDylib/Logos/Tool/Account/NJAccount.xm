// 关于b站账号

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "BFCAccount.h"
#import "BFCAccountHTTPCookie.h"

%group App

%hook BFCAccount

/// 获取SESSDATA的cookie
%new
+ (NSString *)getCookieSESSDATA {
    BFCAccountSSOModel *ssoModel = [NSClassFromString(@"BFCAccount") currentSSO];
    NSArray *cookies = ssoModel.cookieInfo.cookies;
    NSString *cookieSESSDATA = @"";
    for (BFCAccountHTTPCookie *cookie in cookies) {
        if ([cookie.name isEqualToString:@"SESSDATA"]) {
            cookieSESSDATA = cookie.value;
            break;
        }
    }
    return cookieSESSDATA;
}

/// 获取bili_jct的cookie
%new
+ (NSString *)getCookieBiliJct {
    BFCAccountSSOModel *ssoModel = [NSClassFromString(@"BFCAccount") currentSSO];
    NSArray *cookies = ssoModel.cookieInfo.cookies;
    NSString *cookieBiliJct = @"";
    for (BFCAccountHTTPCookie *cookie in cookies) {
        if ([cookie.name isEqualToString:@"bili_jct"]) {
            cookieBiliJct = cookie.value;
            break;
        }
    }
    return cookieBiliJct;
}

/// 获取accessKey
%new
+ (NSString *)accessKey {
    BFCAccountSSOModel *ssoModel = [NSClassFromString(@"BFCAccount") currentSSO];
    NSString *accessKey = ssoModel.tokenInfo.accessToken;
    return accessKey;
}

%end


%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
