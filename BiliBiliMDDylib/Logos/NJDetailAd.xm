// 视频详情页广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"

@interface BBAdUGCContext : NSObject

@end

// 视频下方广告
%hook BBAdUGCContext

- (id)initWithResovler:(id)resovler {
    return nil;
}

%end

// 列表广告
%hook BBAdUGCRcmdModel

- (id)initWithModel:(id)model {
    return nil;
}

- (id)initWithSourceContentAny:(id)any {
    return nil;
}

%end

// UP主分享好物广告
@interface IGListAdapter : NSObject

// 过滤cell的索引
- (NSMutableSet *)nj_filterIndexPaths;
// 要过滤的cell类型
- (NSSet<NSString *> *)nj_filterCellTypes;
// 要过滤的cell id
- (NSSet<NSString *> *)nj_filterCellIds;

- (void)reloadDataWithCompletion:(id)completion;

@end
 
%hook IGListAdapter

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = %orig;
    if ([[self nj_filterCellIds] containsObject:cell.reuseIdentifier] ||
        [[self nj_filterCellTypes] containsObject:NSStringFromClass([cell class])]) {
        if (![[self nj_filterIndexPaths] containsObject:indexPath]) {
//            %log(nj_logPrefix, @"-add", indexPath, [self nj_filterIndexPaths]);
            [[self nj_filterIndexPaths] addObject:indexPath];
            [self reloadDataWithCompletion:nil];
        }
    } else {
        if ([[self nj_filterIndexPaths] containsObject:indexPath]) {
//            %log(nj_logPrefix, @"-rm", indexPath, [self nj_filterIndexPaths]);
            [[self nj_filterIndexPaths] removeObject:indexPath];
            [self reloadDataWithCompletion:nil];
        }
    }
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([[self nj_filterIndexPaths] containsObject:indexPath]) {
//        %log(nj_logPrefix);
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
        NSArray *types = @[];
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
        NSArray *ids = @[@"AdMerchandiseViewBBVideoModule.VDViewSectionControllerCell"];
        filterSet = [NSSet setWithArray:ids];
        objc_setAssociatedObject(self, @selector(nj_filterCellId), filterSet, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return filterSet;
}

%end

// 评论顶部黄色广告条
%hook BBAdSourceContent

- (id)init {
    return nil;
}

%end

%hook BBAdCommonBaseModel

+ (id)modelWithMossMessage:(id)message {
    return nil;
}


%end
