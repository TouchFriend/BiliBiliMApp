#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/DetailAd.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface BBAdUGCContext : NSObject

@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__asm__(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BBAdUGCRcmdModel; @class IGListAdapter; @class BBAdSourceContent; @class BBAdUGCContext; @class BBAdCommonBaseModel; 
static BBAdUGCContext* (*_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$)(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* (*_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithModel$)(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* (*_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$)(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel*, SEL, id) _LOGOS_RETURN_RETAINED; static __kindof UICollectionViewCell * (*_logos_orig$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, UICollectionView *, NSIndexPath *); static __kindof UICollectionViewCell * _logos_method$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, UICollectionView *, NSIndexPath *); static CGSize (*_logos_orig$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, UICollectionView *, UICollectionViewLayout*, NSIndexPath *); static CGSize _logos_method$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL, UICollectionView *, UICollectionViewLayout*, NSIndexPath *); static NSMutableSet * _logos_method$_ungrouped$IGListAdapter$nj_filterIndexPaths(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL); static NSSet<NSString *> * _logos_method$_ungrouped$IGListAdapter$nj_filterCellTypes(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL); static NSSet<NSString *> * _logos_method$_ungrouped$IGListAdapter$nj_filterCellIds(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST, SEL); static BBAdSourceContent* (*_logos_orig$_ungrouped$BBAdSourceContent$init)(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static BBAdSourceContent* _logos_method$_ungrouped$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); 

#line 11 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/DetailAd.xm"


static BBAdUGCContext* _logos_method$_ungrouped$BBAdUGCContext$initWithResovler$(_LOGOS_SELF_TYPE_INIT BBAdUGCContext* __unused self, SEL __unused _cmd, id resovler) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCContext: %p> initWithResovler:%@]: %@", self, resovler, (nj_logPrefix));
    return nil;
}






static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel* __unused self, SEL __unused _cmd, id model) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCRcmdModel: %p> initWithModel:%@]: %@", self, model, (nj_logPrefix));
    return nil;
}

static BBAdUGCRcmdModel* _logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$(_LOGOS_SELF_TYPE_INIT BBAdUGCRcmdModel* __unused self, SEL __unused _cmd, id any) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdUGCRcmdModel: %p> initWithSourceContentAny:%@]: %@", self, any, (nj_logPrefix));
    return nil;
}




@interface IGListAdapter : NSObject


- (NSMutableSet *)nj_filterIndexPaths;

- (NSSet<NSString *> *)nj_filterCellTypes;

- (NSSet<NSString *> *)nj_filterCellIds;

- (void)reloadDataWithCompletion:(id)completion;

@end
 


static __kindof UICollectionViewCell * _logos_method$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, NSIndexPath * indexPath) {
    UICollectionViewCell *cell = _logos_orig$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$(self, _cmd, collectionView, indexPath);
    if ([[self nj_filterCellIds] containsObject:cell.reuseIdentifier] ||
        [[self nj_filterCellTypes] containsObject:NSStringFromClass([cell class])]) {
        if (![[self nj_filterIndexPaths] containsObject:indexPath]) {

            [[self nj_filterIndexPaths] addObject:indexPath];
            [self reloadDataWithCompletion:nil];
        }
    } else {
        if ([[self nj_filterIndexPaths] containsObject:indexPath]) {

            [[self nj_filterIndexPaths] removeObject:indexPath];
            [self reloadDataWithCompletion:nil];
        }
    }
    return cell;
}

static CGSize _logos_method$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, UICollectionViewLayout* collectionViewLayout, NSIndexPath * indexPath) {
    if ([[self nj_filterIndexPaths] containsObject:indexPath]) {
        NSLog(@"-[<IGListAdapter: %p> collectionView:%@ layout:%@ sizeForItemAtIndexPath:%@]: %@", self, collectionView, collectionViewLayout, indexPath, (nj_logPrefix));
        return CGSizeMake(0.0, 0.1);
    }
    return _logos_orig$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$(self, _cmd, collectionView, collectionViewLayout, indexPath);
}




static NSMutableSet * _logos_method$_ungrouped$IGListAdapter$nj_filterIndexPaths(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterIndexPaths));
    if (!filterSet) {
        filterSet = [NSMutableSet set];
        objc_setAssociatedObject(self, @selector(nj_filterIndexPaths), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}



static NSSet<NSString *> * _logos_method$_ungrouped$IGListAdapter$nj_filterCellTypes(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCellType));
    if (!filterSet) {
        NSArray *types = @[];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterCellType), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}



static NSSet<NSString *> * _logos_method$_ungrouped$IGListAdapter$nj_filterCellIds(_LOGOS_SELF_TYPE_NORMAL IGListAdapter* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCellId));
    if (!filterSet) {
        NSArray *ids = @[@"AdMerchandiseViewBBVideoModule.VDViewSectionControllerCell"];
        filterSet = [NSSet setWithArray:ids];
        objc_setAssociatedObject(self, @selector(nj_filterCellId), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}






static BBAdSourceContent* _logos_method$_ungrouped$BBAdSourceContent$init(_LOGOS_SELF_TYPE_INIT BBAdSourceContent* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdSourceContent: %p> init]: %@", self, (nj_logPrefix));
    return nil;
}





static id _logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id message) {
    NSLog(@"+[<BBAdCommonBaseModel: %p> modelWithMossMessage:%@]: %@", self, message, (nj_logPrefix));
    return nil;
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$BBAdUGCContext = objc_getClass("BBAdUGCContext"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCContext, @selector(initWithResovler:), (IMP)&_logos_method$_ungrouped$BBAdUGCContext$initWithResovler$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCContext$initWithResovler$);}Class _logos_class$_ungrouped$BBAdUGCRcmdModel = objc_getClass("BBAdUGCRcmdModel"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCRcmdModel, @selector(initWithModel:), (IMP)&_logos_method$_ungrouped$BBAdUGCRcmdModel$initWithModel$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithModel$);}{ MSHookMessageEx(_logos_class$_ungrouped$BBAdUGCRcmdModel, @selector(initWithSourceContentAny:), (IMP)&_logos_method$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$, (IMP*)&_logos_orig$_ungrouped$BBAdUGCRcmdModel$initWithSourceContentAny$);}Class _logos_class$_ungrouped$IGListAdapter = objc_getClass("IGListAdapter"); { MSHookMessageEx(_logos_class$_ungrouped$IGListAdapter, @selector(collectionView:cellForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$IGListAdapter$collectionView$cellForItemAtIndexPath$);}{ MSHookMessageEx(_logos_class$_ungrouped$IGListAdapter, @selector(collectionView:layout:sizeForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$IGListAdapter$collectionView$layout$sizeForItemAtIndexPath$);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSMutableSet *), strlen(@encode(NSMutableSet *))); i += strlen(@encode(NSMutableSet *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$IGListAdapter, @selector(nj_filterIndexPaths), (IMP)&_logos_method$_ungrouped$IGListAdapter$nj_filterIndexPaths, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSString *> *), strlen(@encode(NSSet<NSString *> *))); i += strlen(@encode(NSSet<NSString *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$IGListAdapter, @selector(nj_filterCellTypes), (IMP)&_logos_method$_ungrouped$IGListAdapter$nj_filterCellTypes, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSString *> *), strlen(@encode(NSSet<NSString *> *))); i += strlen(@encode(NSSet<NSString *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$IGListAdapter, @selector(nj_filterCellIds), (IMP)&_logos_method$_ungrouped$IGListAdapter$nj_filterCellIds, _typeEncoding); }Class _logos_class$_ungrouped$BBAdSourceContent = objc_getClass("BBAdSourceContent"); { MSHookMessageEx(_logos_class$_ungrouped$BBAdSourceContent, @selector(init), (IMP)&_logos_method$_ungrouped$BBAdSourceContent$init, (IMP*)&_logos_orig$_ungrouped$BBAdSourceContent$init);}Class _logos_class$_ungrouped$BBAdCommonBaseModel = objc_getClass("BBAdCommonBaseModel"); Class _logos_metaclass$_ungrouped$BBAdCommonBaseModel = object_getClass(_logos_class$_ungrouped$BBAdCommonBaseModel); { MSHookMessageEx(_logos_metaclass$_ungrouped$BBAdCommonBaseModel, @selector(modelWithMossMessage:), (IMP)&_logos_meta_method$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$, (IMP*)&_logos_meta_orig$_ungrouped$BBAdCommonBaseModel$modelWithMossMessage$);}} }
#line 135 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/DetailAd.xm"
