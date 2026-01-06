//
//  NJSettingBizHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/12/28.
//

#import <Foundation/Foundation.h>
#import "NJSettingSkullViewModel.h"
#import "NJShareManager.h"
#import "NJSettingEventManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingBizHandler : NSObject

/// 要注入的数据
@property (nonatomic, strong) NSArray<NJSettingSkullViewModel *> *injectDatas;
/// 事件管理者
@property (nonatomic, strong) NJSettingEventManager *eventManager;


/// 分享数据
@property (nonatomic, strong) NJShareManager *shareManager;

/// 处理业务
/// - Parameter viewModel: 数据
- (void)handleBizWithViewModel:(NJSettingSkullViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
