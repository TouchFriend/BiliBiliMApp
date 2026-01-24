//
//  NJSettingInjectDataProvider.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class NJSettingSkullViewModel, NJInlineSettingModel;

@interface NJSettingInjectDataProvider : NSObject

/// 要注入的数据
- (NSArray<NJSettingSkullViewModel *> *)injectDatas;

/// 关注的版块数据
- (NSArray<NJInlineSettingModel *> *)followTabs;

@end

NS_ASSUME_NONNULL_END
