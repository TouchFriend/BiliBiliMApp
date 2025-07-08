// 主页-热门的广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

// 热门-热门话题
%hook BBHotTopicTopicListModel

- (id)initWithGPBMessage:(id)gpbmessage {
    return nil;
}

%end

// 热门-推荐一个
%hook BBHotTopicRcmdOneItemModel

- (id)initWithGPBMessage:(id)gpbmessage {
    return nil;
}

%end

@interface BBHotTopicSmallCoverV5Model : NSObject

- (id)smallCoverV5;
- (id)base;
- (NSString *)fromType;

@end

// 热门-后台添加，固定位置的广告
%hook BBHotTopicSmallCoverV5Model

- (id)initWithGPBMessage:(id)gpbmessage {
    BBHotTopicSmallCoverV5Model *model = %orig;
    if ([[[[model smallCoverV5] base] fromType] isEqualToString:@"operation"]) {
        return nil;
    }
    return model;
}

%end

// 热门-广告
%hook BBHotTopicSmallCoverAdModel

- (id)initWithGPBMessage:(id)gpbmessage {
    return nil;
}

%end
