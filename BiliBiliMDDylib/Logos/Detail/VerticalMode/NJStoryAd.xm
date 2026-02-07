// 竖屏模式广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

// 搜索框，比如：搜索·地虎铠甲为什么叫杨幂
@interface BAPIAppStoryV1BottomDiversionEntranceReply : NSObject

@property (retain, nonatomic) NSMutableArray *diversionEntranceListArray;

@end

%hook BAPIAppStoryV1BottomDiversionEntranceReply

- (id)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error {
    BAPIAppStoryV1BottomDiversionEntranceReply *ret = %orig;
    [ret.diversionEntranceListArray removeAllObjects];
    return ret;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
