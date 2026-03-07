#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Tool/Account/NJAccount.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "BFCAccount.h"
#import "BFCAccountHTTPCookie.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BFCAccount; 


#line 8 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliMApp/BiliBiliMDDylib/Logos/Tool/Account/NJAccount.xm"
static NSString * _logos_meta_method$App$BFCAccount$nj_getCookieSESSDATA(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString * _logos_meta_method$App$BFCAccount$nj_getCookieBiliJct(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static NSString * _logos_meta_method$App$BFCAccount$nj_accessKey(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL _logos_meta_method$App$BFCAccount$nj_isLogin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 





static NSString * _logos_meta_method$App$BFCAccount$nj_getCookieSESSDATA(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
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



static NSString * _logos_meta_method$App$BFCAccount$nj_getCookieBiliJct(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
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



static NSString * _logos_meta_method$App$BFCAccount$nj_accessKey(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BFCAccountSSOModel *ssoModel = [NSClassFromString(@"BFCAccount") currentSSO];
    NSString *accessKey = ssoModel.tokenInfo.accessToken;
    return accessKey;
}



static BOOL _logos_meta_method$App$BFCAccount$nj_isLogin(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    BFCAccountUserModel *userModel = [NSClassFromString(@"BFCAccount") currentUser];
    return userModel != nil;
}






static __attribute__((constructor)) void _logosLocalCtor_9f2e78ec(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BFCAccount = objc_getClass("BFCAccount"); Class _logos_metaclass$App$BFCAccount = object_getClass(_logos_class$App$BFCAccount); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$App$BFCAccount, @selector(nj_getCookieSESSDATA), (IMP)&_logos_meta_method$App$BFCAccount$nj_getCookieSESSDATA, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$App$BFCAccount, @selector(nj_getCookieBiliJct), (IMP)&_logos_meta_method$App$BFCAccount$nj_getCookieBiliJct, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$App$BFCAccount, @selector(nj_accessKey), (IMP)&_logos_meta_method$App$BFCAccount$nj_accessKey, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_metaclass$App$BFCAccount, @selector(nj_isLogin), (IMP)&_logos_meta_method$App$BFCAccount$nj_isLogin, _typeEncoding); }}
    }
}
