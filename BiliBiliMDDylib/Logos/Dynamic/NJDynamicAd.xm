// 动态广告

/*
 BAPIAppDynamicV2DynAllReply：请求动态列表响应model
    BAPIAppDynamicV2DynamicList：动态列表信息
        BAPIAppDynamicV2DynamicItem: 卡片信息
 
 BAPIAppDynamicV2DynamicItem: 卡片信息
    BAPIAppDynamicV2Module：模块信息
        BAPIAppDynamicV2ModuleAuthor：作者信息
        BAPIAppDynamicV2ModuleOpusSummary：作品摘要
        BAPIAppDynamicV2ModuleAdditional：额外模块，比如UP主的推荐
        BAPIAppDynamicV2ModuleDynamic: 转发的动态信息
            
 BAPIAppDynamicV2ModuleAdditional：额外模块
    BAPIAppDynamicV2AdditionalPGC：
    BAPIAppDynamicV2AdditionGoods：商品
    BAPIAppDynamicV2AdditionVote：投票
    BAPIAppDynamicV2AdditionCommon：
    BAPIAppDynamicV2AdditionEsport：电子竞技
 
 BAPIAppDynamicV2ModuleDynamic: 转发的动态信息
    BAPIAppDynamicV2MdlDynForward：动态信息
 
 */

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

%group App

@interface BAPIAppDynamicV2ModuleAdditional : NSObject

/// 类型
@property (nonatomic, assign) int type;

/// 是否过滤
/// @return YES:过滤，NO：不过滤
- (BOOL)nj_isFilter;
/// 过滤类型
- (NSSet<NSNumber *> *)nj_filterTypes;

@end

%hook BAPIAppDynamicV2ModuleAdditional

/// 是否过滤
/// @return YES:过滤，NO：不过滤
%new
- (BOOL)nj_isFilter {
    if ([[self nj_filterTypes] containsObject:@(self.type)]) {
        return YES;
    }
    return NO;
}

/// 过滤类型
%new
- (NSSet<NSNumber *> *)nj_filterTypes {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterTypes));
    if (!filterSet) {
        NSArray *types = @[
            @(2),   // additional_type_goods: 商品
        ];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterTypes), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

%end



@interface BAPIAppDynamicV2MdlDynForward : NSObject

/// 动态信息
@property (nonatomic, strong) BAPIAppDynamicV2DynamicItem *item;

@end

@class BAPIAppDynamicV2DynamicItem;

@interface BAPIAppDynamicV2ModuleDynamic : NSObject

/// 类型
@property (nonatomic, assign) int type;
/// 转发动态
@property (retain, nonatomic) BAPIAppDynamicV2MdlDynForward *dynForward;

/// 是否过滤
/// @return YES:过滤，NO：不过滤
- (BOOL)nj_isFilter;

@end

%hook BAPIAppDynamicV2ModuleDynamic

/// 是否过滤
/// @return YES:过滤，NO：不过滤
%new
- (BOOL)nj_isFilter {
    // 4    mdl_dyn_forward: 转发动态
    if (self.type == 4) {
        id item = self.dynForward.item;
        return [item nj_isFilter];
    }
    return NO;
}

%end

@interface BAPIAppDynamicV2Module : NSObject

/// 模块类型
@property (nonatomic, assign) int moduleType;
/// 转发模块
@property (nonatomic, strong) BAPIAppDynamicV2ModuleDynamic *moduleDynamic;
/// 附加模块
@property (nonatomic, strong) BAPIAppDynamicV2ModuleAdditional *moduleAdditional;

/// 是否过滤
/// @return YES:过滤，NO：不过滤
- (BOOL)nj_isFilter;

@end

%hook BAPIAppDynamicV2Module

/// 是否过滤
/// @return YES:过滤，NO：不过滤
%new
- (BOOL)nj_isFilter {
    // @(8),   module_additional: 额外模块，比如UP主的推荐、投票
    if (self.moduleType == 8) {
        return [self.moduleAdditional nj_isFilter];
    }
    // @(4),    module_dynamic: 转发的动态模块
    if (self.moduleType == 4) {
        return [self.moduleDynamic nj_isFilter];
    }
    return NO;
}

%end

@interface BAPIAppDynamicV2DynamicItem : NSObject

/// 模块数据
@property (retain, nonatomic) NSMutableArray *modulesArray;

/// 是否过滤
/// @return YES:过滤，NO：不过滤
- (BOOL)nj_isFilter;

@end

%hook BAPIAppDynamicV2DynamicItem

/*
- (NSMutableArray *)modulesArray {
    NSMutableArray *origModulesArray = %orig;
    for (BAPIAppDynamicV2Module *item in origModulesArray) {
        NSLog(@"cxzcxz:moduleType:%d-type:%d", item.moduleType, item.moduleDynamic.type);
    }
    return origModulesArray;
}
*/

/// 是否过滤
/// @return YES:过滤，NO：不过滤
%new
- (BOOL)nj_isFilter {
    BOOL isFilter = NO;
    for (BAPIAppDynamicV2Module *item in self.modulesArray) {
        if ([item nj_isFilter]) {
            isFilter = YES;
            break;
        }
    }
    return isFilter;
}

%end

@interface BAPIAppDynamicV2DynamicList : NSObject

/// 列表数据
@property (nonatomic, strong) NSMutableArray *listArray;

@end

%hook BAPIAppDynamicV2DynamicList

- (NSMutableArray *)listArray {
    NSMutableArray *origListArray = %orig;
    NSMutableArray *items = [NSMutableArray array];
    for (BAPIAppDynamicV2DynamicItem *item in origListArray) {
        if ([item nj_isFilter]) {
            continue;
        }
        [items addObject:item];
    }
    // 保存过滤后的数据
    [self setListArray:items];
    return origListArray;
}

%end

%end

%ctor {
    if (NJ_MASTER_SWITCH_VALUE) {
        %init(App);
    }
}
