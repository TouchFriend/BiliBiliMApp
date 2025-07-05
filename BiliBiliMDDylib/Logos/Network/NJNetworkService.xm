// 网络层

#import <UIKit/UIKit.h>
#import "NJApiDataManger.h"

@interface BFCRequest : NSObject

@end

@protocol BFCApiMetrics <NSObject>

@end

%hook BFCRequest

- (id)initWithRequest:(NSURLRequest *)request
             taskType:(unsigned long long)type
             priority:(long long)priority
      progressHandler:(void (^)(long long param1, long long param2, long long param3))progressHandler
       metricsHandler:(void (^)(id<BFCApiMetrics> metrics))metricsHandler
    completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler {
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
        return %orig(request,
                     type,
                     priority,
                     progressHandler,
                     metricsHandler,
                     hookCompletionHandler);
        
}

%end
