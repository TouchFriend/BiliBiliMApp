//
//  NJSettingBizHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/12/28.
//

#import "NJSettingBizHandler.h"
#import "NJSettingDefine.h"

// 官网地址
#define NJ_OFFICIAL_WEBSITE_URL_STR @"https://github.com/TouchFriend/BiliBiliMApp"

@interface NJSettingBizHandler ()


@end

@implementation NJSettingBizHandler

#pragma mark - Life Cycle Methods

- (instancetype)init {
    self = [super init];
    if (self) {
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init


- (void)doInit {
    self.shareManager = [[NJShareManager alloc] init];
}

#pragma mark - Override Methods

#pragma mark - Public Methods

- (void)handleBizWithViewModel:(NJSettingSkullViewModel *)viewModel {
    NSString *bizId = viewModel.bizId;
    // 分享数据
    if ([bizId isEqualToString:NJ_SHARE_DATA_BIZ_ID]) {
        [self.shareManager shareCacheFolder];
        return;
    }
    // 官网
    if ([bizId isEqualToString:NJ_OFFICIAL_WEBSITE_BIZ_ID]) {
        NSURL *url = [NSURL URLWithString:NJ_OFFICIAL_WEBSITE_URL_STR];
        [[UIApplication sharedApplication] openURL:url
                                           options:@{}
                                 completionHandler:nil];
        return;
    }
}

#pragma mark - Private Methods



#pragma mark - Property Methods


@end
