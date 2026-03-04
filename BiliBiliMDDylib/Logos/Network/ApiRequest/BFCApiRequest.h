//
//  BFCApiRequest.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

#import <UIKit/UIKit.h>
#import "BFCApiOptions.h"

@interface BFCApiRequest : NSObject {
    /* instance variables */
    id _sessionMetrics;
    NSString *_key;
    NSString *_session;
    long long _latestTick;
    _Bool _requested;
}

@property (readonly, nonatomic) long long httpStatusCode;
@property (retain, nonatomic) NSThread *currentThread;
@property (retain, nonatomic) id tracker;
@property (retain, nonatomic) BFCApiOptions *options;
@property (readonly, nonatomic) NSURLResponse *response;
@property (readonly, nonatomic) _Bool finished;
@property (readonly, nonatomic) _Bool cancelled;
@property (retain, nonatomic) NSObject<OS_dispatch_queue> *asyncRequestResponseQueue;
@property (copy) id /* block */ responseAbleToCache;
@property (copy, nonatomic) void (^completionHandler)(NSDictionary *dict);
@property (copy, nonatomic) id /* block */ httpHeaderHandler;
@property (copy, nonatomic) id /* block */ cachedHandler;
@property (copy, nonatomic) void (^errorHandler)(NSError *error, NSDictionary *dict);
@property (copy, nonatomic) id /* block */ progressHandler;
@property (copy, nonatomic) id /* block */ rawDataHandler;
@property (copy, nonatomic) id /* block */ customRequest;
/// 请求注入，比如设置请求头的Content-Type
@property (copy, nonatomic) NSURLRequest * (^requestInjection)(NSURLRequest *request);
@property (copy) id /* block */ customResponseBeforeRequest;
@property (copy) id /* block */ customResponseAfterRequest;
@property (copy, nonatomic) id /* block */ preProcessRawData;
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;

/* class methods */
+ (id)requestWithOptions:(id)options;
+ (_Bool)isAccessTokenExpired:(id)expired;
+ (void)cleanAllApiCache;
+ (id)commonParams;
+ (id)signStringWithParams:(id)params;
+ (id)buildQueryString:(id)string;

/* instance methods */
- (id)initWithOptions:(id)options;
- (id)init;
- (void)setTraker:(id)traker;
- (id)traker;
- (void)cancel;
- (_Bool)isFinished;
- (_Bool)isCancelled;
- (void)addDependency:(id)dependency;
- (void)removeDependency:(id)dependency;
// 发送异步请求
- (void)requestAsync;
// 发送同步请求
- (void)requestSync;
- (void)_query:(_Bool)_query;
- (id)_getKey;
- (_Bool)_queryFromLocalCache:(id *)cache;
- (id)_serializationFromRawData:(id)data error:(id *)error;
- (void)_queryRemoteEnd:(id)end allHeaderFields:(id)fields localCache:(id)cache error:(id)error immediately:(_Bool)immediately;
- (id)_ormResponse:(id)response error:(id *)error;
- (id)_ormMapping:(id)mapping model:(id)model errorPtr:(id *)ptr;
- (id)_findObjByPath:(id)path obj:(id)obj;
- (id)_fetchValueInDict:(id)dict pathKeyArr:(id)arr;
- (id)_buildRequestOperation:(id /* block */)operation afterRequest:(id /* block */)request;
- (id)_queryString;
- (id)_httpBodyFromQueryString:(id)string;
- (void)_track:(unsigned long long)_track args:(id)args;
- (id)responseQueue;
- (void)cancelRequest;
- (void)bindTask:(id)task;
- (void)unbindTask:(id)task;
- (void)taskDidSendBodyData:(long long)data totalBytesSent:(long long)sent totalBytesExpectedToSend:(long long)send;
- (void)task:(id)task didSendBodyData:(long long)data totalBytesSent:(long long)sent totalBytesExpectedToSend:(long long)send;
- (void)task:(id)task didFinishCollectingMetrics:(id)metrics;

@end

