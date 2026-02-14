// 版块广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

// 首页搜索框的关键字
@interface BAPIAppInterfaceV1DefaultWordsReply : NSObject

/// 显示的字
@property (copy, nonatomic) NSString *show;
// 关键字
@property (copy, nonatomic) NSString *word;

@end

%hook BAPIAppInterfaceV1DefaultWordsReply

- (id)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error {
    BAPIAppInterfaceV1DefaultWordsReply *ret = %orig;
    ret.show = @"";
    ret.word = @"";
    return ret;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
