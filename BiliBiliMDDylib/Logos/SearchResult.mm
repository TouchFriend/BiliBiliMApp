#line 1 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/SearchResult.xm"


#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"



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

@class BBAdSearchModel; @class ResultViewController; 
static BBAdSearchModel* (*_logos_orig$_ungrouped$BBAdSearchModel$init)(_LOGOS_SELF_TYPE_INIT BBAdSearchModel*, SEL) _LOGOS_RETURN_RETAINED; static BBAdSearchModel* _logos_method$_ungrouped$BBAdSearchModel$init(_LOGOS_SELF_TYPE_INIT BBAdSearchModel*, SEL) _LOGOS_RETURN_RETAINED; static id (*_logos_meta_orig$_ungrouped$BBAdSearchModel$modelWithMossMessage$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static id _logos_meta_method$_ungrouped$BBAdSearchModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, id); static __kindof UICollectionViewCell * (*_logos_orig$_ungrouped$ResultViewController$collectionView$cellForItemAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, UICollectionView *, NSIndexPath *); static __kindof UICollectionViewCell * _logos_method$_ungrouped$ResultViewController$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, UICollectionView *, NSIndexPath *); static CGSize (*_logos_orig$_ungrouped$ResultViewController$collectionView$layout$sizeForItemAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, UICollectionView *, UICollectionViewLayout*, NSIndexPath *); static CGSize _logos_method$_ungrouped$ResultViewController$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL, UICollectionView *, UICollectionViewLayout*, NSIndexPath *); static NSMutableSet * _logos_method$_ungrouped$ResultViewController$nj_filterIndexPaths(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static NSSet<NSString *> * _logos_method$_ungrouped$ResultViewController$nj_filterCellTypes(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); static NSSet<NSString *> * _logos_method$_ungrouped$ResultViewController$nj_filterCellIds(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST, SEL); 

#line 7 "/Users/touchworld/Documents/iOSDisassembler/hook/bilibili/BiliBiliTweak/BiliBiliTweak/src/SearchResult.xm"


static BBAdSearchModel* _logos_method$_ungrouped$BBAdSearchModel$init(_LOGOS_SELF_TYPE_INIT BBAdSearchModel* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    NSLog(@"-[<BBAdSearchModel: %p> init]: %@", self, (nj_logPrefix));
    return nil;
}


static id _logos_meta_method$_ungrouped$BBAdSearchModel$modelWithMossMessage$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id message) {
    NSLog(@"+[<BBAdSearchModel: %p> modelWithMossMessage:%@]: %@", self, message, (nj_logPrefix));
    return nil;
}





@interface ResultViewController : NSObject


- (NSMutableSet *)nj_filterIndexPaths;

- (NSSet<NSString *> *)nj_filterCellTypes;

- (NSSet<NSString *> *)nj_filterCellIds;

@end
 


static __kindof UICollectionViewCell * _logos_method$_ungrouped$ResultViewController$collectionView$cellForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, NSIndexPath * indexPath) {
    UICollectionViewCell *cell = _logos_orig$_ungrouped$ResultViewController$collectionView$cellForItemAtIndexPath$(self, _cmd, collectionView, indexPath);
    if ([[self nj_filterCellIds] containsObject:cell.reuseIdentifier] ||
        [[self nj_filterCellTypes] containsObject:NSStringFromClass([cell class])]) {
        if (![[self nj_filterIndexPaths] containsObject:indexPath]) {

            [[self nj_filterIndexPaths] addObject:indexPath];
            dispatch_async(dispatch_get_main_queue(), ^{
                [collectionView performBatchUpdates:^{
                    [collectionView reloadItemsAtIndexPaths:@[indexPath]];
                } completion:^(BOOL finished) {
                    
                }];
            });
        }
    } else {
        if ([[self nj_filterIndexPaths] containsObject:indexPath]) {

            [[self nj_filterIndexPaths] removeObject:indexPath];
            dispatch_async(dispatch_get_main_queue(), ^{
                [collectionView performBatchUpdates:^{
                    [collectionView reloadItemsAtIndexPaths:@[indexPath]];
                } completion:^(BOOL finished) {
                    
                }];
            });
        }
    }
    return cell;
}

static CGSize _logos_method$_ungrouped$ResultViewController$collectionView$layout$sizeForItemAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UICollectionView * collectionView, UICollectionViewLayout* collectionViewLayout, NSIndexPath * indexPath) {
    if ([[self nj_filterIndexPaths] containsObject:indexPath]) {
        NSLog(@"-[<ResultViewController: %p> collectionView:%@ layout:%@ sizeForItemAtIndexPath:%@]: %@", self, collectionView, collectionViewLayout, indexPath, (nj_logPrefix));
        return CGSizeMake(0.0, 0.1);
    }
    return _logos_orig$_ungrouped$ResultViewController$collectionView$layout$sizeForItemAtIndexPath$(self, _cmd, collectionView, collectionViewLayout, indexPath);
}




static NSMutableSet * _logos_method$_ungrouped$ResultViewController$nj_filterIndexPaths(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSMutableSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterIndexPaths));
    if (!filterSet) {
        filterSet = [NSMutableSet set];
        objc_setAssociatedObject(self, @selector(nj_filterIndexPaths), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}



static NSSet<NSString *> * _logos_method$_ungrouped$ResultViewController$nj_filterCellTypes(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCellType));
    if (!filterSet) {
        NSArray *types = @[@"_TtCO21BBSearchCardsProvider6Result17LittleSpecialCell"];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterCellType), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}



static NSSet<NSString *> * _logos_method$_ungrouped$ResultViewController$nj_filterCellIds(_LOGOS_SELF_TYPE_NORMAL id _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCellId));
    if (!filterSet) {
        NSArray *ids = @[];
        filterSet = [NSSet setWithArray:ids];
        objc_setAssociatedObject(self, @selector(nj_filterCellId), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}







static __attribute__((constructor)) void _logosLocalCtor_18bd9d6c(int __unused argc, char __unused **argv, char __unused **envp) {


    {Class _logos_class$_ungrouped$BBAdSearchModel = objc_getClass("BBAdSearchModel"); Class _logos_metaclass$_ungrouped$BBAdSearchModel = object_getClass(_logos_class$_ungrouped$BBAdSearchModel); { MSHookMessageEx(_logos_class$_ungrouped$BBAdSearchModel, @selector(init), (IMP)&_logos_method$_ungrouped$BBAdSearchModel$init, (IMP*)&_logos_orig$_ungrouped$BBAdSearchModel$init);}{ MSHookMessageEx(_logos_metaclass$_ungrouped$BBAdSearchModel, @selector(modelWithMossMessage:), (IMP)&_logos_meta_method$_ungrouped$BBAdSearchModel$modelWithMossMessage$, (IMP*)&_logos_meta_orig$_ungrouped$BBAdSearchModel$modelWithMossMessage$);}Class _logos_class$_ungrouped$ResultViewController = objc_getClass("BBSearchSwift.ResultViewController"); { MSHookMessageEx(_logos_class$_ungrouped$ResultViewController, @selector(collectionView:cellForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$ResultViewController$collectionView$cellForItemAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$ResultViewController$collectionView$cellForItemAtIndexPath$);}{ MSHookMessageEx(_logos_class$_ungrouped$ResultViewController, @selector(collectionView:layout:sizeForItemAtIndexPath:), (IMP)&_logos_method$_ungrouped$ResultViewController$collectionView$layout$sizeForItemAtIndexPath$, (IMP*)&_logos_orig$_ungrouped$ResultViewController$collectionView$layout$sizeForItemAtIndexPath$);}{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSMutableSet *), strlen(@encode(NSMutableSet *))); i += strlen(@encode(NSMutableSet *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$ResultViewController, @selector(nj_filterIndexPaths), (IMP)&_logos_method$_ungrouped$ResultViewController$nj_filterIndexPaths, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSString *> *), strlen(@encode(NSSet<NSString *> *))); i += strlen(@encode(NSSet<NSString *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$ResultViewController, @selector(nj_filterCellTypes), (IMP)&_logos_method$_ungrouped$ResultViewController$nj_filterCellTypes, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(NSSet<NSString *> *), strlen(@encode(NSSet<NSString *> *))); i += strlen(@encode(NSSet<NSString *> *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$ResultViewController, @selector(nj_filterCellIds), (IMP)&_logos_method$_ungrouped$ResultViewController$nj_filterCellIds, _typeEncoding); }}
    
}
