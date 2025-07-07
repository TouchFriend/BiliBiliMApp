#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Network/NJNetworkService.xm"


#import <UIKit/UIKit.h>
#import "NJApiDataManger.h"

@interface BFCRequest : NSObject

@end

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

@class BFCRequest; 
static BFCRequest* (*_logos_orig$_ungrouped$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$)(_LOGOS_SELF_TYPE_INIT BFCRequest*, SEL, NSURLRequest *, unsigned long long, long long, void (^)(long long param1, long long param2, long long param3), void (^)(id<BFCApiMetrics> metrics), void (^)(NSData *data, NSURLResponse *response, NSError *error)) _LOGOS_RETURN_RETAINED; static BFCRequest* _logos_method$_ungrouped$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$(_LOGOS_SELF_TYPE_INIT BFCRequest*, SEL, NSURLRequest *, unsigned long long, long long, void (^)(long long param1, long long param2, long long param3), void (^)(id<BFCApiMetrics> metrics), void (^)(NSData *data, NSURLResponse *response, NSError *error)) _LOGOS_RETURN_RETAINED; 

#line 14 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Network/NJNetworkService.xm"







static BFCRequest* _logos_method$_ungrouped$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$(_LOGOS_SELF_TYPE_INIT BFCRequest* __unused self, SEL __unused _cmd, NSURLRequest * request, unsigned long long type, long long priority, void (^progressHandler)(long long param1, long long param2, long long param3), void (^metricsHandler)(id<BFCApiMetrics> metrics), void (^completionHandler)(NSData *data, NSURLResponse *response, NSError *error)) _LOGOS_RETURN_RETAINED {
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





        return _logos_orig$_ungrouped$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$(self, _cmd, request, type, priority, progressHandler, metricsHandler, hookCompletionHandler);
        
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BFCRequest = objc_getClass("BFCRequest"); { MSHookMessageEx(_logos_class$_ungrouped$BFCRequest, @selector(initWithRequest:taskType:priority:progressHandler:metricsHandler:completionHandler:), (IMP)&_logos_method$_ungrouped$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$, (IMP*)&_logos_orig$_ungrouped$BFCRequest$initWithRequest$taskType$priority$progressHandler$metricsHandler$completionHandler$);}} }
#line 42 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/Network/NJNetworkService.xm"
