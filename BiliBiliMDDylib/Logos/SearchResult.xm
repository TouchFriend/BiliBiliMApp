// 搜索结果广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

// 搜索结果广告
%hook BBAdSearchModel

- (id)init {
    %log(nj_logPrefix);
    return nil;
}


+ (id)modelWithMossMessage:(id)message {
    %log(nj_logPrefix);
    return nil;
}

%end



@interface ResultViewController : NSObject

// 过滤cell的索引
- (NSMutableSet *)nj_filterIndexPaths;
// 要过滤的cell类型
- (NSSet<NSString *> *)nj_filterCellTypes;
// 要过滤的cell id
- (NSSet<NSString *> *)nj_filterCellIds;

@end
 
%hook ResultViewController

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = %orig;
    if ([[self nj_filterCellIds] containsObject:cell.reuseIdentifier] ||
        [[self nj_filterCellTypes] containsObject:NSStringFromClass([cell class])]) {
        if (![[self nj_filterIndexPaths] containsObject:indexPath]) {
//            %log(nj_logPrefix, @"-add", indexPath, [self nj_filterIndexPaths]);
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
//            %log(nj_logPrefix, @"-rm", indexPath, [self nj_filterIndexPaths]);
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

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([[self nj_filterIndexPaths] containsObject:indexPath]) {
        %log(nj_logPrefix);
        return CGSizeMake(0.0, 0.1);
    }
    return %orig;
}


// 要过滤的cell索引
%new
- (NSMutableSet *)nj_filterIndexPaths {
    NSMutableSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterIndexPaths));
    if (!filterSet) {
        filterSet = [NSMutableSet set];
        objc_setAssociatedObject(self, @selector(nj_filterIndexPaths), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

// 要过滤的cell类型
%new
- (NSSet<NSString *> *)nj_filterCellTypes {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCellType));
    if (!filterSet) {
        NSArray *types = @[@"_TtCO21BBSearchCardsProvider6Result17LittleSpecialCell"];
        filterSet = [NSSet setWithArray:types];
        objc_setAssociatedObject(self, @selector(nj_filterCellType), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

// 要过滤的cell id
%new
- (NSSet<NSString *> *)nj_filterCellIds {
    NSSet *filterSet = objc_getAssociatedObject(self, @selector(nj_filterCellId));
    if (!filterSet) {
        NSArray *ids = @[];
        filterSet = [NSSet setWithArray:ids];
        objc_setAssociatedObject(self, @selector(nj_filterCellId), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

%end





%ctor {
    %init(
          ResultViewController = objc_getClass("BBSearchSwift.ResultViewController"),
        );
    
}
