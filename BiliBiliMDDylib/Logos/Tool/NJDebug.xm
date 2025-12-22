// 调试
/*
 b站的Protobuf model继承自GPBMessage。
 请求数据的model以Req结尾，比如BAPIAppViewuniteV1ViewReq。
 响应数据的model以Reply结尾，比如BAPIAppViewuniteV1ViewReply。
 
 
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
/*
@interface GPBMessage : NSObject

@end

%hook GPBMessage

- (id)init {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__);
    return %orig;
}

- (id)initWithData:(id)data error:(id *)error {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__);
    return %orig;
}

- (id)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__);
    return %orig;
}

- (id)initWithCodedInputStream:(id)stream extensionRegistry:(id)registry error:(id *)error {
    NSLog(@"%@:%@-%p-%s", nj_logPrefix, NSStringFromClass([self class]), self, __FUNCTION__);
    return %orig;
}

%end
*/
