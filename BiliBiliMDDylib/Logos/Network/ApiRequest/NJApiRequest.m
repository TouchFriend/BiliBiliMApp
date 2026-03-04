//
//  NJApiRequest.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

#import "NJApiRequest.h"
#import "NJCommonDefine.h"
#import "BFCApiOptions.h"
#import "BFCApiRequest.h"
#import "BFCApiModelDescription.h"
#import "BFCAccount.h"
#import "BFCAccountHTTPCookie.h"
#import "NJMyPrivilegeModel.h"
#import "NJResponseModel.h"

@implementation NJApiRequest

/// 自动领取大会员福利
+ (void)couponAutoReceiver {
    if (!NJ_AUTO_RECEIVE_COUPON_VALUE) {
        return;
    }
    
    __weak typeof(self) weakSelf = self;
    // 获取大会员卡券列表
    [self loadMyPrivilegeWithCompletionHandler:^(NJMyPrivilegeModel *model) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        NSLog(@"%@:%@-%p-%s-获取大会员卡券列表成功，list count:%ld", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, [model list].count);
        [strongSelf receiveCouponWithModel:model];
    } errorHandler:^(NSError *error, NSDictionary *dict) {
        NSLog(@"%@:%@-%p-%s-获取大会员卡券列表失败，error:%@-dict:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, error, dict);
    }];
}



/// 领取优惠券
/// - Parameter model: 大会员福利 model
+ (void)receiveCouponWithModel:(NJMyPrivilegeModel *)model {
    NSArray<NJCouponInfo *> *list = model.list;
    for (NJCouponInfo *info in list) {
        // 领取优惠券
        if (info.type != 8 && info.type != 9 && info.state == 0 && info.vip_type > 0) {
            [self receiveCouponWithType:info.type completionHandler:^(NSDictionary *dict) {
                NSLog(@"%@:%@-%p-%s-领取优惠券成功，type:%ld,dict:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, info.type, dict);
            } errorHandler:^(NSError *error, NSDictionary *dict) {
                NSLog(@"%@:%@-%p-%s-领取优惠券失败，type:%ld,error:%@-dict:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, info.type, error, dict);
            }];
        } else if (info.type == 9 && info.state == 0 && info.vip_type > 0) {
            // 领取每日经验
            [self receiveExperienceWithCompletionHandler:^(NSDictionary *dict) {
                NSLog(@"%@:%@-%p-%s-领取每日经验成功,dict:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, dict);
            } errorHandler:^(NSError *error, NSDictionary *dict) {
                NSLog(@"%@:%@-%p-%s-领取每日经验失败,error:%@-dict:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, error, dict);
            }];
            continue;
        }
    }
    
    // 每日视频分享经验
    [self receiveShareExperienceWithCompletionHandler:^(NSDictionary *dict) {
        NSLog(@"%@:%@-%p-%s-领取每日视频分享经验成功,dict:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, dict);
    } errorHandler:^(NSError *error, NSDictionary *dict) {
        NSLog(@"%@:%@-%p-%s-领取每日视频分享经验失败,error:%@-dict:%@", nj_logPrefix, NSStringFromClass([(id)self class]), self, __FUNCTION__, error, dict);
    }];
}


/// 领取优惠券
/// - Parameter type: 优惠券类型
+ (void)receiveCouponWithType:(NSInteger)type
            completionHandler:(void (^)(NSDictionary *dict))completionHandler
                 errorHandler:(void (^)(NSError *error, NSDictionary *dict))errorHandler {
    NSString *cookieBiliJct = [NSClassFromString(@"BFCAccount") getCookieBiliJct];
    BFCApiOptions *options = [NSClassFromString(@"BFCApiOptions") optionsWithBaseUrl:@"https://api.bilibili.com/x/vip/privilege/receive"];
    // POST
    options.requestMethod = 1;
    options.params = @{ @"type": [@(type) stringValue],
                        @"csrf": cookieBiliJct,};
    BFCApiModelDescription *response_Des = [NSClassFromString(@"BFCApiModelDescription") modelWith:@"/" mappingClass:NSClassFromString(@"NJResponseModel") isArray:NO isOptional:YES];
    options.modelDescriptions = @[response_Des];
    BFCApiRequest *request = [(BFCApiRequest *)[NSClassFromString(@"BFCApiRequest") alloc] initWithOptions:options];
    //     "Content-Type" = "application/json; charset=utf-8";
//    request.requestInjection = ^NSURLRequest *(NSURLRequest *request) {
//        NSMutableURLRequest *mutableRequest = [request mutableCopy];
//        [mutableRequest setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
//        return mutableRequest;
//    };
    request.completionHandler = ^(NSDictionary *dict) {
        if (completionHandler) {
            completionHandler(dict);
        }
    };
    request.errorHandler = ^(NSError *error, NSDictionary *dict) {
        if (errorHandler) {
            errorHandler(error, dict);
        }
    };
    
    [request requestAsync];
}

/// 领取每日经验
+ (void)receiveExperienceWithCompletionHandler:(void (^)(NSDictionary *dict))completionHandler
                                  errorHandler:(void (^)(NSError *error, NSDictionary *dict))errorHandler {
    NSString *cookieBiliJct = [NSClassFromString(@"BFCAccount") getCookieBiliJct];
    BFCApiOptions *options = [NSClassFromString(@"BFCApiOptions") optionsWithBaseUrl:@"https://api.bilibili.com/x/vip/experience/add"];
    // POST
    options.requestMethod = 1;
    options.params = @{ @"csrf": cookieBiliJct,};
    BFCApiModelDescription *response_Des = [NSClassFromString(@"BFCApiModelDescription") modelWith:@"/" mappingClass:NSClassFromString(@"NJResponseModel") isArray:NO isOptional:YES];
    options.modelDescriptions = @[response_Des];
    BFCApiRequest *request = [(BFCApiRequest *)[NSClassFromString(@"BFCApiRequest") alloc] initWithOptions:options];
    request.completionHandler = ^(NSDictionary *dict) {
        if (completionHandler) {
            completionHandler(dict);
        }
    };
    request.errorHandler = ^(NSError *error, NSDictionary *dict) {
        if (errorHandler) {
            errorHandler(error, dict);
        }
    };
    
    [request requestAsync];
}
 
/// 获取大会员卡券列表
+ (void)loadMyPrivilegeWithCompletionHandler:(void (^)(NJMyPrivilegeModel *model))completionHandler errorHandler:(void (^)(NSError *error, NSDictionary *dict))errorHandler {
    // https://github.com/pskdje/bilibili-API-collect/blob/main/docs/vip/info.md
    BFCApiOptions *options = [NSClassFromString(@"BFCApiOptions") optionsWithBaseUrl:@"https://api.bilibili.com/x/vip/privilege/my"];
    options.params = @{};
//    options.extraHTTPHeader = @{@"Cookie": cookie};
    BFCApiModelDescription *coupon_Des = [NSClassFromString(@"BFCApiModelDescription") modelWith:@"/data" mappingClass:NSClassFromString(@"NJMyPrivilegeModel") isArray:NO isOptional:YES];
    options.modelDescriptions = @[coupon_Des];
    BFCApiRequest *request = [(BFCApiRequest *)[NSClassFromString(@"BFCApiRequest") alloc] initWithOptions:options];
    
    request.completionHandler = ^(NSDictionary *dict) {
        if (completionHandler) {
            completionHandler(dict[@"/data"]);
        }
    };
    request.errorHandler = ^(NSError *error, NSDictionary *dict) {
        if (errorHandler) {
            errorHandler(error, dict);
        }
    };
    
    [request requestAsync];
     
}

/// 领取每日视频分享经验
+ (void)receiveShareExperienceWithCompletionHandler:(void (^)(NSDictionary *dict))completionHandler
                                       errorHandler:(void (^)(NSError *error, NSDictionary *dict))errorHandler {
    NSString *oid = @"170001"; // aid
    NSArray *sids = @[@"279786",
                      @"275431",
                      @"279787",
                      @"280467",
                      @"280468",
                      @"280469",
                      @"274491",
                      @"267410",
                      @"267714",
                      @"270380",];
    NSString *sid = sids.count ? sids[arc4random_uniform((u_int32_t)sids.count)] : nil;
    NSString *accessKey = [NSClassFromString(@"BFCAccount") accessKey];
    NSDictionary *params = @{@"access_key" : accessKey,
                             @"oid" : oid,
                             @"panel_type" : @"1",
                             @"share_channel" : @"QQ",
                             @"share_id" : @"main.ugc-video-detail.0.0.pv",
                             @"share_origin" : @"vinfo_player",
                             @"sid" : sid,
                             @"success" : @"true",};
    
    BFCApiOptions *options = [NSClassFromString(@"BFCApiOptions") optionsWithBaseUrl:@"https://api.bilibili.com/x/share/finish"];
    // POST
    options.requestMethod = 1;
    options.params = params;
    BFCApiModelDescription *response_Des = [NSClassFromString(@"BFCApiModelDescription") modelWith:@"/" mappingClass:NSClassFromString(@"NJResponseModel") isArray:NO isOptional:YES];
    options.modelDescriptions = @[response_Des];
    BFCApiRequest *request = [(BFCApiRequest *)[NSClassFromString(@"BFCApiRequest") alloc] initWithOptions:options];
    request.completionHandler = ^(NSDictionary *dict) {
        if (completionHandler) {
            completionHandler(dict);
        }
    };
    request.errorHandler = ^(NSError *error, NSDictionary *dict) {
        if (errorHandler) {
            errorHandler(error, dict);
        }
    };
    
    [request requestAsync];
}
    
@end
