// 搜索结果广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

// 过滤搜索结果
@interface BAPIPolymerAppSearchV1Item : NSObject

@property (copy, nonatomic) NSString *goto_p;

@end

@interface BAPIPolymerAppSearchV1SearchAllResponse : NSObject

@property (copy, nonatomic) NSString *keyword;
@property (copy, nonatomic) NSString *trackid;
@property (retain, nonatomic) NSMutableArray *navArray;
@property (readonly, nonatomic) unsigned long long navArray_Count;
@property (retain, nonatomic) NSMutableArray *itemArray;
@property (readonly, nonatomic) unsigned long long itemArray_Count;

- (NSSet<NSString *> *)nj_filterCardTypes;

@end

%hook BAPIPolymerAppSearchV1SearchAllResponse

- (id)initWithData:(id)data extensionRegistry:(id)registry error:(id *)error {
    BAPIPolymerAppSearchV1SearchAllResponse *result = %orig;
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIPolymerAppSearchV1Item *item in result.itemArray) {
        if ([[self nj_filterCardTypes] containsObject:item.goto_p]) {
            continue;
        }
        [items addObject:item];
    }
    result.itemArray = items;
    return result;
}

%new
- (NSSet<NSString *> *)nj_filterCardTypes {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCardTypes));
    if (!filterSet) {
        NSArray *types = @[@"special_s",        // 广告
                           @"video_ad",         // 视频广告
                           @"picture_ad",       // 图片广告
                           @"related_search",   // 相关搜索
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterCardTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

%end
