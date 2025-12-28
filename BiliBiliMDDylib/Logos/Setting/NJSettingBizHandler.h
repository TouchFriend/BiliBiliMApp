//
//  NJSettingBizHandler.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/12/28.
//

#import <Foundation/Foundation.h>
#import "NJSettingSkullViewModel.h"
#import "NJShareManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingBizHandler : NSObject

/// 分享数据
@property (nonatomic, strong) NJShareManager *shareManager;

/// 处理业务
/// - Parameter viewModel: 数据
- (void)handleBizWithViewModel:(NJSettingSkullViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
