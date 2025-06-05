// 视频详情页

#import <UIKit/UIKit.h>

@interface BBAdUGCContext : NSObject

@end

// 视频下方广告
%hook BBAdUGCContext

- (id)initWithResovler:(id)resovler {
    NSLog(@"cxzcxz:%@-%s", NSStringFromClass([self class]), __FUNCTION__);
    return nil;
}

%end

// 列表广告
%hook BBAdUGCRcmdModel

- (id)initWithModel:(id)model {
    %log((NSString *)@"cxzcxz");
    return nil;
}

- (id)initWithSourceContentAny:(id)any {
    %log((NSString *)@"cxzcxz");
    return nil;
}

%end

