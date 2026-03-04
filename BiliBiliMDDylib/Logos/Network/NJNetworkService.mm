#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Network/NJNetworkService.xm"


#import <UIKit/UIKit.h>
#import "NJApiDataManger.h"
#import "NJCommonDefine.h"
#import "NSURL+NJPath.h"
#import "BFCAccountHTTPCookie.h"
#import "BFCApiOptions.h"
#import "BFCApiModelDescription.h"

@protocol BFCApiMetrics <NSObject>

@end



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

@class BFCApiOptions; @class BFCAccountHTTPCookie; @class BFCApiRequest; @class BFCApiModelDescription; @class BFCRequest; @class BFCApiRequestOperation; 


#line 16 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Network/NJNetworkService.xm"
static void (*_logos_orig$App$BFCApiRequest$requestAsync)(_LOGOS_SELF_TYPE_NORMAL BFCApiRequest* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BFCApiRequest$requestAsync(_LOGOS_SELF_TYPE_NORMAL BFCApiRequest* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$App$BFCApiRequest$requestSync)(_LOGOS_SELF_TYPE_NORMAL BFCApiRequest* _LOGOS_SELF_CONST, SEL); static void _logos_method$App$BFCApiRequest$requestSync(_LOGOS_SELF_TYPE_NORMAL BFCApiRequest* _LOGOS_SELF_CONST, SEL); static BFCApiRequestOperation* (*_logos_orig$App$BFCApiRequestOperation$init)(_LOGOS_SELF_TYPE_INIT BFCApiRequestOperation*, SEL) _LOGOS_RETURN_RETAINED; static BFCApiRequestOperation* _logos_method$App$BFCApiRequestOperation$init(_LOGOS_SELF_TYPE_INIT BFCApiRequestOperation*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$App$BFCApiRequestOperation$bfcRequest$taskType$completionHandler$)(_LOGOS_SELF_TYPE_NORMAL BFCApiRequestOperation* _LOGOS_SELF_CONST, SEL, NSURLRequest *, unsigned long long, void (^)(NSData *data, NSURLResponse *response, NSError *error, id<BFCApiMetrics> metrics)); static id _logos_method$App$BFCApiRequestOperation$bfcRequest$taskType$completionHandler$(_LOGOS_SELF_TYPE_NORMAL BFCApiRequestOperation* _LOGOS_SELF_CONST, SEL, NSURLRequest *, unsigned long long, void (^)(NSData *data, NSURLResponse *response, NSError *error, id<BFCApiMetrics> metrics)); static BFCRequest* (*_logos_orig$App$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$)(_LOGOS_SELF_TYPE_INIT BFCRequest*, SEL, NSURLRequest *, unsigned long long, long long, void (^)(long long param1, long long param2, long long param3), void (^)(id<BFCApiMetrics> metrics), void (^)(NSData *data, NSURLResponse *response, NSError *error)) _LOGOS_RETURN_RETAINED; static BFCRequest* _logos_method$App$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$(_LOGOS_SELF_TYPE_INIT BFCRequest*, SEL, NSURLRequest *, unsigned long long, long long, void (^)(long long param1, long long param2, long long param3), void (^)(id<BFCApiMetrics> metrics), void (^)(NSData *data, NSURLResponse *response, NSError *error)) _LOGOS_RETURN_RETAINED; static NSString * (*_logos_orig$App$BFCApiOptions$description)(_LOGOS_SELF_TYPE_NORMAL BFCApiOptions* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BFCApiOptions$description(_LOGOS_SELF_TYPE_NORMAL BFCApiOptions* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$App$BFCAccountHTTPCookie$description)(_LOGOS_SELF_TYPE_NORMAL BFCAccountHTTPCookie* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BFCAccountHTTPCookie$description(_LOGOS_SELF_TYPE_NORMAL BFCAccountHTTPCookie* _LOGOS_SELF_CONST, SEL); static NSString * (*_logos_orig$App$BFCApiModelDescription$description)(_LOGOS_SELF_TYPE_NORMAL BFCApiModelDescription* _LOGOS_SELF_CONST, SEL); static NSString * _logos_method$App$BFCApiModelDescription$description(_LOGOS_SELF_TYPE_NORMAL BFCApiModelDescription* _LOGOS_SELF_CONST, SEL); 




static void _logos_method$App$BFCApiRequest$requestAsync(_LOGOS_SELF_TYPE_NORMAL BFCApiRequest* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$App$BFCApiRequest$requestAsync(self, _cmd);
}

static void _logos_method$App$BFCApiRequest$requestSync(_LOGOS_SELF_TYPE_NORMAL BFCApiRequest* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$App$BFCApiRequest$requestSync(self, _cmd);
}






static BFCApiRequestOperation* _logos_method$App$BFCApiRequestOperation$init(_LOGOS_SELF_TYPE_INIT BFCApiRequestOperation* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return _logos_orig$App$BFCApiRequestOperation$init(self, _cmd);
}

static id _logos_method$App$BFCApiRequestOperation$bfcRequest$taskType$completionHandler$(_LOGOS_SELF_TYPE_NORMAL BFCApiRequestOperation* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSURLRequest * request, unsigned long long type, void (^handler)(NSData *data, NSURLResponse *response, NSError *error, id<BFCApiMetrics> metrics)) {
    return _logos_orig$App$BFCApiRequestOperation$bfcRequest$taskType$completionHandler$(self, _cmd, request, type, handler);
}



@interface BFCRequest : NSObject

@end








static BFCRequest* _logos_method$App$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$(_LOGOS_SELF_TYPE_INIT BFCRequest* __unused self, SEL __unused _cmd, NSURLRequest * request, unsigned long long type, long long priority, void (^progressHandler)(long long param1, long long param2, long long param3), void (^metricsHandler)(id<BFCApiMetrics> metrics), void (^completionHandler)(NSData *data, NSURLResponse *response, NSError *error)) _LOGOS_RETURN_RETAINED {
        void (^hookCompletionHandler)(NSData *, NSURLResponse *, NSError *) = ^(NSData *data, NSURLResponse *response, NSError *error) {
            














            if (completionHandler) {
                data = [[NJApiDataManger sharedInstance] handleWithData:data
                                                               response:response
                                                                  error:error];
                completionHandler(data,
                                  response,
                                  error);
            }
        };





        return _logos_orig$App$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$(self, _cmd, request, type, priority, progressHandler, metricsHandler, hookCompletionHandler);
        
}





static NSString * _logos_method$App$BFCApiOptions$description(_LOGOS_SELF_TYPE_NORMAL BFCApiOptions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableString *desc = [NSMutableString string];
    
    [desc appendFormat:@"<%@: %p>\n", NSStringFromClass([self class]), self];
    
    [desc appendFormat:@"baseUrl: %@\n", self.baseUrl];
    [desc appendFormat:@"localPath: %@\n", self.localPath];
    [desc appendFormat:@"localData: %@\n", self.localData];
    [desc appendFormat:@"modelDescriptions: %@\n", self.modelDescriptions];
    [desc appendFormat:@"params: %@\n", self.params];
    [desc appendFormat:@"extraHTTPHeader: %@\n", self.extraHTTPHeader];
    
    [desc appendFormat:@"requestMethod: %llu\n", self.requestMethod];
    [desc appendFormat:@"signType: %llu\n", self.signType];
    [desc appendFormat:@"taskType: %llu\n", self.taskType];
    [desc appendFormat:@"timeoutInterval: %f\n", self.timeoutInterval];
    [desc appendFormat:@"cacheValidLife: %f\n", self.cacheValidLife];
    
    [desc appendFormat:@"ignoreCache: %@\n", self.ignoreCache ? @"YES" : @"NO"];
    [desc appendFormat:@"enableHttpCache: %@\n", self.enableHttpCache ? @"YES" : @"NO"];
    [desc appendFormat:@"disableDefaultErrorMessage: %@\n", self.disableDefaultErrorMessage ? @"YES" : @"NO"];
    [desc appendFormat:@"enableDeviceNameParam: %@\n", self.enableDeviceNameParam ? @"YES" : @"NO"];
    [desc appendFormat:@"ignoreCodeNonZero: %@\n", self.ignoreCodeNonZero ? @"YES" : @"NO"];
    
    [desc appendFormat:@"apiKeySecretType: %llu\n", self.apiKeySecretType];
    [desc appendFormat:@"taskDescription: %@\n", self.taskDescription];
    
    return desc;
}





static NSString * _logos_method$App$BFCAccountHTTPCookie$description(_LOGOS_SELF_TYPE_NORMAL BFCAccountHTTPCookie* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *orig = _logos_orig$App$BFCAccountHTTPCookie$description(self, _cmd);
    NSString *ret = [orig stringByAppendingFormat:@"name:%@,value:%@,httpOnly:%@", self.name, self.value, @(self.httpOnly)];
    return ret;
}





static NSString * _logos_method$App$BFCApiModelDescription$description(_LOGOS_SELF_TYPE_NORMAL BFCApiModelDescription* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSString *orig = _logos_orig$App$BFCApiModelDescription$description(self, _cmd);
    NSString *ret = [orig stringByAppendingFormat:@"keyPath:%@,isArray:%@,mappingClass:%@,isOptional:%@", self.keyPath, @(self.isArray), self.mappingClass, @(self.isOptional)];
    return ret;
}





static __attribute__((constructor)) void _logosLocalCtor_27b85f3b(int __unused argc, char __unused **argv, char __unused **envp) {
    if (NJ_MASTER_SWITCH_VALUE) {
        {Class _logos_class$App$BFCApiRequest = objc_getClass("BFCApiRequest"); { MSHookMessageEx(_logos_class$App$BFCApiRequest, @selector(requestAsync), (IMP)&_logos_method$App$BFCApiRequest$requestAsync, (IMP*)&_logos_orig$App$BFCApiRequest$requestAsync);}{ MSHookMessageEx(_logos_class$App$BFCApiRequest, @selector(requestSync), (IMP)&_logos_method$App$BFCApiRequest$requestSync, (IMP*)&_logos_orig$App$BFCApiRequest$requestSync);}Class _logos_class$App$BFCApiRequestOperation = objc_getClass("BFCApiRequestOperation"); { MSHookMessageEx(_logos_class$App$BFCApiRequestOperation, @selector(init), (IMP)&_logos_method$App$BFCApiRequestOperation$init, (IMP*)&_logos_orig$App$BFCApiRequestOperation$init);}{ MSHookMessageEx(_logos_class$App$BFCApiRequestOperation, @selector(bfcRequest:taskType:completionHandler:), (IMP)&_logos_method$App$BFCApiRequestOperation$bfcRequest$taskType$completionHandler$, (IMP*)&_logos_orig$App$BFCApiRequestOperation$bfcRequest$taskType$completionHandler$);}Class _logos_class$App$BFCRequest = objc_getClass("BFCRequest"); { MSHookMessageEx(_logos_class$App$BFCRequest, @selector(initWithRequest:taskType:priority:progressHandler:metricsHandler:completionHandler:), (IMP)&_logos_method$App$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$, (IMP*)&_logos_orig$App$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$);}Class _logos_class$App$BFCApiOptions = objc_getClass("BFCApiOptions"); { MSHookMessageEx(_logos_class$App$BFCApiOptions, @selector(description), (IMP)&_logos_method$App$BFCApiOptions$description, (IMP*)&_logos_orig$App$BFCApiOptions$description);}Class _logos_class$App$BFCAccountHTTPCookie = objc_getClass("BFCAccountHTTPCookie"); { MSHookMessageEx(_logos_class$App$BFCAccountHTTPCookie, @selector(description), (IMP)&_logos_method$App$BFCAccountHTTPCookie$description, (IMP*)&_logos_orig$App$BFCAccountHTTPCookie$description);}Class _logos_class$App$BFCApiModelDescription = objc_getClass("BFCApiModelDescription"); { MSHookMessageEx(_logos_class$App$BFCApiModelDescription, @selector(description), (IMP)&_logos_method$App$BFCApiModelDescription$description, (IMP*)&_logos_orig$App$BFCApiModelDescription$description);}}
    }
}
