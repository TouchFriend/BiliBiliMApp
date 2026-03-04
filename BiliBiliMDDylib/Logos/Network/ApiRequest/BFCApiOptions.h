//
//  BFCApiOptions.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

@interface BFCApiOptions : NSObject

/// 请求地址
@property (copy, nonatomic) NSString *baseUrl;
@property (copy, nonatomic) NSString *localPath;
@property (copy, nonatomic) NSData *localData;
/// 数据要转换的模型，每一项是 BFCApiModelDescription
@property (copy, nonatomic) NSArray *modelDescriptions;
/// 请求参数
@property (copy, nonatomic) NSDictionary *params;
/// 额外的请求头信息
@property (copy, nonatomic) NSDictionary *extraHTTPHeader;
/// 请求方式
/// 0 = GET
/// 1 = POST
@property (nonatomic) unsigned long long requestMethod;
@property (nonatomic) unsigned long long signType;
@property (nonatomic) unsigned long long taskType;
@property (nonatomic) double timeoutInterval;
@property (nonatomic) double cacheValidLife;
@property (nonatomic) _Bool ignoreCache;
@property (nonatomic) _Bool enableHttpCache;
@property (nonatomic) _Bool disableDefaultErrorMessage;
@property (nonatomic) _Bool enableDeviceNameParam;
@property (nonatomic) _Bool ignoreCodeNonZero;
@property (nonatomic) unsigned long long apiKeySecretType;
@property (copy, nonatomic) NSString *taskDescription;

/* class methods */
+ (id)optionsWithBaseUrl:(id)url;

/* instance methods */
- (id)init;

@end
