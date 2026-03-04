// 网络层

#import <UIKit/UIKit.h>
#import "NJApiDataManger.h"
#import "NJCommonDefine.h"
#import "NSURL+NJPath.h"
#import "BFCAccountHTTPCookie.h"
#import "BFCApiOptions.h"
#import "BFCApiModelDescription.h"

@protocol BFCApiMetrics <NSObject>

@end


%group App

// 发送请求的最上层的类
%hook BFCApiRequest

- (void)requestAsync {
    %orig;
}

- (void)requestSync {
    %orig;
}

%end

// 发送请求的 NSOperation
%hook BFCApiRequestOperation

- (id)init {
    return %orig;
}

- (id)bfcRequest:(NSURLRequest *)request taskType:(unsigned long long)type completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error, id<BFCApiMetrics> metrics))handler {
    return %orig(request, type, handler);
}

%end

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

%hook BFCApiOptions

- (NSString *)description {
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

%end

%hook BFCAccountHTTPCookie

- (NSString *)description {
    NSString *orig = %orig;
    NSString *ret = [orig stringByAppendingFormat:@"name:%@,value:%@,httpOnly:%@", self.name, self.value, @(self.httpOnly)];
    return ret;
}

%end

%hook BFCApiModelDescription

- (NSString *)description {
    NSString *orig = %orig;
    NSString *ret = [orig stringByAppendingFormat:@"keyPath:%@,isArray:%@,mappingClass:%@,isOptional:%@", self.keyPath, @(self.isArray), self.mappingClass, @(self.isOptional)];
    return ret;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
