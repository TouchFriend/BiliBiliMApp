//
//  UIImageView+BBSFreeDataWebCache.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/5.
//

#import <UIKit/UIKit.h>

@interface UIImageView (BBSFreeDataWebCache)

/* class methods */
+ (long long)bfc_currentImgQualitySettingType;
+ (long long)_bfc_currentImgQuality;
+ (void)bfc_updateCurrentImgQualitySetting:(long long)setting;
+ (unsigned long long)bfc_getImageCacheSize;
+ (void)bfc_clearImageCache;
+ (id)bfc_cacheKeyForURL:(id)url;
+ (id)bfc_cacheKeyForURL:(id)url ptSize:(CGSize)size;
+ (id)bfc_getCachedImageForKey:(id)key;
+ (id)bfc_getCacheDataForKey:(id)key;
+ (id)cacheKeyForURL:(id)url;
+ (id)bfc_getImageForKey:(id)key;
+ (void)bfc_setImage:(id)image imageData:(id)data forKey:(id)key;
+ (id)bfc_getCachedImageForKey:(id)key isMemeryCacheType:(_Bool)type;
+ (_Bool)bfc_containsCachedImageForKey:(id)key;
+ (_Bool)bfc_containsImageForKey:(id)key;
+ (void)bfc_removeCachedImageForKey:(id)key isOnlyMemeryCache:(_Bool)cache;
+ (void)bfc_downloadImageWithURL:(id)url progress:(id)progress completed:(id)completed;
+ (void)bfc_downloadImageWithURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)bfc_downloadImageWithURL:(id)url ptSize:(CGSize)size options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)bfc_downloadImageWithOutClipURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed noWebp:(_Bool)webp;
+ (id)bfc_getCachedImage:(id)image;
+ (void)bfc_downloadImageWithImageURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)bfc_downloadImageDataWithImageURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)bfc_downloadEmojiWithURL:(id)url progress:(id)progress completed:(id)completed;
+ (void)bwa_downloadImageWithUrl:(id)url ptSize:(CGSize)size options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)bwa_downloadImageWithOutClipURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)bbMall_downloadImageWithURL:(id)url progress:(id)progress completed:(id)completed;
+ (void)bbMall_downloadImageWithURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)liveSD_downloadImageWithURL:(id)url progress:(id)progress completed:(id)completed;
+ (void)liveSD_downloadImageWithURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed;
+ (void)liveSD_downloadImageWithURL:(id)url options:(long long)options progress:(id)progress completed:(id)completed noWebp:(_Bool)webp;
+ (void)liveSD_downloadImageWithURL:(id)url ptSize:(CGSize)size options:(long long)options progress:(id)progress completed:(id)completed;
+ (id)bbs_simpleView;
+ (id)bbs_renderedView;
+ (id)bbs_renderedLoadingView;
+ (id)_viewWithImage:(id)image;

/* instance methods */
- (void)theme_tintColor:(id)color;
- (void)theme_uninstallTintColor;
- (void)theme_imageWithTintColor:(id)color image:(id)image;
- (void)theme_uninstallImageWithTintColor;
- (void)bfc_setHighlightedImageWithURL:(id)url;
- (void)bfc_setHighlightedImageWithURL:(id)url options:(unsigned long long)options;
- (void)bfc_setHighlightedImageWithURL:(id)url options:(unsigned long long)options context:(id)context;
- (void)bfc_setHighlightedImageWithURL:(id)url completed:(id)completed;
- (void)bfc_setHighlightedImageWithURL:(id)url options:(unsigned long long)options completed:(id)completed;
- (void)bfc_setHighlightedImageWithURL:(id)url options:(unsigned long long)options progress:(id)progress completed:(id)completed;
- (void)bfc_setHighlightedImageWithURL:(id)url options:(unsigned long long)options context:(id)context progress:(id)progress completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url;
- (void)bfc_setImageWithURL:(id)url placeholderImage:(id)image;
- (void)bfc_setImageWithURL:(id)url placeholderImage:(id)image options:(unsigned long long)options;
- (void)bfc_setImageWithURL:(id)url placeholderImage:(id)image options:(unsigned long long)options context:(id)context;
- (void)bfc_setImageWithURL:(id)url completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url placeholderImage:(id)image completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url placeholderImage:(id)image options:(unsigned long long)options completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url placeholderImage:(id)image options:(unsigned long long)options progress:(id)progress completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url placeholderImage:(id)image options:(unsigned long long)options context:(id)context progress:(id)progress completed:(id)completed;
- (void)bfc_cancelCurrentImageRequest;
- (void)bfc_setImageWithURL:(id)url ptSize:(CGSize)size;
- (void)bfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image;
- (void)bfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options;
- (void)bfc_setImageWithURL:(id)url ptSize:(CGSize)size completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (void)bfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options progress:(id)progress completed:(id)completed;
- (void)bfc_autosetImageWithURL:(id)url ptSize:(CGSize)size;
- (void)bfc_autosetImageWithURL:(id)url ptSize:(CGSize)size completed:(id)completed;
- (void)bfc_autosetImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image completed:(id)completed;
- (void)bfc_autosetImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (void)bfc_autosetImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options style:(id)style requestUrlBlock:(id)block progress:(id)progress transform:(id)transform completed:(id)completed;
- (void)bfc_setImageWithOutClipURL:(id)url placeholderImage:(id)image options:(long long)options progress:(id)progress completed:(id)completed;
- (void)bfc_setImageWithOutClipURL:(id)url placeholderImage:(id)image options:(long long)options progress:(id)progress completed:(id)completed noWebp:(_Bool)webp;
- (void)bfc_setImageWithOutClipURL:(id)url placeholderImage:(id)image options:(long long)options progress:(id)progress transform:(id)transform completed:(id)completed noWebp:(_Bool)webp;
- (void)bfc_setImageWithImageURL:(id)url placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (void)bfc_setThumbnailImageWithImageURL:(id)url pxSize:(CGSize)size zoomScale:(double)scale placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (id)bfc_imageURLStorage;
- (void)bfc_imageSpriteDataWithImageURL:(id)url metaData:(id)data options:(long long)options completed:(id)completed;
- (void)trackImageSizeWithURL:(id)url measureWidth:(double)width measureHeight:(double)height requireWidth:(double)width requireHeight:(double)height overrideType:(long long)type;
- (void)share_setImageWithURL:(id)url ptSize:(CGSize)size;
- (void)share_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image;
- (void)share_autosetImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image;
- (void)bfc_setEmojiWithURL:(id)url placeholder:(id)placeholder completion:(id)completion;
- (void)bfc_setEmojiWithURL:(id)url placeholder:(id)placeholder options:(long long)options progress:(id)progress completion:(id)completion;
- (_Bool)bbp_breathAnimatable;
- (void)setBbp_breathAnimatable:(_Bool)animatable;
- (void)kfc_setImageWithURL:(id)url ptSize:(CGSize)size;
- (void)kfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image;
- (void)kfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options;
- (void)kfc_setImageWithURL:(id)url ptSize:(CGSize)size completed:(id)completed;
- (void)kfc_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (void)bwa_setImageWithUrl:(id)url ptSize:(CGSize)size placeholderImage:(id)image completed:(id)completed;
- (void)bwa_setImageWithUrl:(id)url ptSize:(CGSize)size completed:(id)completed;
- (void)bwa_setImageWithUrl:(id)url ptSize:(CGSize)size placeholderImage:(id)image;
- (void)bwa_setImageWithUrl:(id)url ptSize:(CGSize)size;
- (void)bwa_setImageWithOutClipUrl:(id)url completed:(id)completed;
- (void)bwa_setLogoImageWithUrl:(id)url;
- (void)bwa_loadImageWithURLString:(id)urlstring runtime:(id)runtime;
- (void)bwa_loadImageWithURLString:(id)urlstring runtime:(id)runtime placeholderImage:(id)image;
- (void)_loadHTTPImageWithURLString:(id)urlstring placeholderImage:(id)image;
- (void)_loadAbsoluteFileWithURLString:(id)urlstring runtime:(id)runtime placeholderImage:(id)image;
- (void)loadURL:(id)url;
- (void)loadModel:(id)model;
- (void)loadModel:(id)model complete:(id)complete;
- (void)setImageWithThemeImage:(id)image;
- (void)setImageWithThemeName:(id)name;
- (void)bbmall_setThumbGoodsImageWithURL:(id)url;
- (void)bbmall_setGoodsImageShowLoadStatusWithURL:(id)url expectedSize:(CGSize)size;
- (void)bbmall_setGoodsImageShowLoadStatusWithURL:(id)url expectedSize:(CGSize)size completed:(id)completed;
- (void)bbMall_setImageShowLoadingAndErrorStatusWithURL:(id)url expectedSize:(CGSize)size;
- (void)bbMall_setImageShowLoadingAndErrorStatusWithURL:(id)url expectedSize:(CGSize)size completed:(id)completed;
- (void)bbmall_setImageShowLoadStatusWithAspectFitURL:(id)url expectedSize:(CGSize)size;
- (void)bbmall_setImageShowLoadStatusWithAspectFitURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image;
- (void)bbmall_setImageShowLoadStatusWithAspectFitURL:(id)url expectedSize:(CGSize)size loadingImage:(id)image placeholderImage:(id)image;
- (void)bbmall_setImageShowLoadStatusWithAspectFitURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image placeholderImageMode:(long long)mode;
- (void)bbmall_setImageShowLoadStatusWithAspectFitURL:(id)url expectedSize:(CGSize)size loadingImage:(id)image placeholderImage:(id)image placeholderImageMode:(long long)mode;
- (void)bbmall_setImageShowLoadStatusWithAspectFitURL:(id)url expectedSize:(CGSize)size loadingImage:(id)image placeholderImage:(id)image placeholderImageMode:(long long)mode completion:(id)completion;
- (void)bbmall_setImageWithOutClipURL:(id)url placeholderImage:(id)image options:(long long)options progress:(id)progress completed:(id)completed noWebp:(_Bool)webp;
- (void)bbMall_setImageWithURL:(id)url expectedSize:(CGSize)size;
- (void)bbMall_setImageWithURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image;
- (void)bbMall_setImageWithURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image options:(long long)options;
- (void)bbMall_setImageWithURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (void)bbMall_setThemeImageWithURL:(id)url expectedSize:(CGSize)size preRequestBlock:(id)block loadingImage:(id)image errorImage:(id)image completed:(id)completed;
- (void)trackImage:(id)image error:(id)error stage:(long long)stage cacheType:(long long)type imageUrl:(id)url completedBlock:(id)block;
- (void)liveSD_setImageWithURL:(id)url;
- (void)liveSD_setImageWithURL:(id)url placeholderImage:(id)image;
- (void)liveSD_setImageWithURL:(id)url options:(long long)options;
- (void)liveSD_setImageWithURL:(id)url placeholderImage:(id)image options:(long long)options;
- (void)liveSD_setImageWithURL:(id)url placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (void)liveSD_setImageWithURL:(id)url placeholderImage:(id)image options:(long long)options completed:(id)completed noWebp:(_Bool)webp;
- (void)liveSD_fix_setImageWithURL:(id)url placeholderImage:(id)image;
- (void)liveSD_setImageWithURL:(id)url expectedSize:(CGSize)size;
- (void)liveSD_setImageWithURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image;
- (void)liveSD_setImageWithURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image options:(long long)options;
- (void)liveSD_setImageWithURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (_Bool)_isMatchBFS:(id)bfs;
- (void)bbr_setImageWithURL:(id)url placeholder:(id)placeholder ptSize:(CGSize)size location:(id)location style:(id)style completeBlock:(id)block;
- (id)__capture;
- (void)__swizzle_liveSD_setImageWithURL:(id)url placeholderImage:(id)image options:(long long)options completed:(id)completed noWebp:(_Bool)webp;
- (void)__swizzle_liveSD_setImageWithURL:(id)url expectedSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (void)setBBDF_isInTransition:(_Bool)transition;
- (_Bool)BBDF_isInTransition;
- (id)coverSubviewsToHiden;
- (void)playerWillDestroy:(id)destroy;
- (void)_clearInlineCpView;
- (void)bbdf_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image needsGIF:(_Bool)gif completed:(id)completed;
- (void)bbdf_setImageWithURL:(id)url ptSize:(CGSize)size placeholderColor:(id)color needsGIF:(_Bool)gif completed:(id)completed;
- (void)bbs_setImageWithString:(id)string ptSize:(CGSize)size;
- (void)bbs_setImageWithString:(id)string ptSize:(CGSize)size placeholderImage:(id)image;
- (void)bbs_setImageWithString:(id)string ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options;
- (void)bbs_setImageWithString:(id)string ptSize:(CGSize)size completed:(id)completed;
- (void)bbs_setImageWithString:(id)string ptSize:(CGSize)size placeholderImage:(id)image completed:(id)completed;
- (void)bbs_setImageWithString:(id)string ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;
- (_Bool)isFreeBand;
- (void)bbs_setImageWithURL:(id)url ptSize:(CGSize)size placeholderImage:(id)image options:(long long)options completed:(id)completed;

@end
