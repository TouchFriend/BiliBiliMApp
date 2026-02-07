// 网络层

#import <UIKit/UIKit.h>
#import "NJApiDataManger.h"
#import "NJCommonDefine.h"
#import "NSURL+NJPath.h"

@protocol BFCApiMetrics <NSObject>

@end


%group App

@interface BFCRequest : NSObject

@end

%hook BFCRequest

- (id)initWithRequest:(NSURLRequest *)request
             taskType:(unsigned long long)type
             priority:(long long)priority
      progressHandler:(void (^)(long long param1, long long param2, long long param3))progressHandler
       metricsHandler:(void (^)(id<BFCApiMetrics> metrics))metricsHandler
    completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler {
        void (^hookCompletionHandler)(NSData *, NSURLResponse *, NSError *) = ^(NSData *data, NSURLResponse *response, NSError *error) {
            /*
            if (data) {
                NSString *urlStr = response.URL.nj_fullPath;
                id jsonObject = [NSJSONSerialization JSONObjectWithData:data
                                                               options:NSJSONReadingMutableContainers
                                                                 error:nil];
                NSData *jsonData = [NSJSONSerialization dataWithJSONObject:jsonObject
                                                                 options:NSJSONWritingPrettyPrinted
                                                                   error:nil];

                NSString *jsonString = [[NSString alloc] initWithData:jsonData
                                                              encoding:NSUTF8StringEncoding];
                NSLog(@"%@:url:%@ \n%@", nj_logPrefix, urlStr, jsonString);
            }
             */
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

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
