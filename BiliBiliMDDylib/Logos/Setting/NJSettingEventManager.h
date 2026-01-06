//
//  NJSettingEventManager.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/6.
//

#import <UIKit/UIKit.h>
#import "NJSettingSwitchViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJSettingEventManager : NSObject

/// 开关切换
@property (nonatomic, copy) void (^aSwitchChange)(UISwitch * aSwitch,
                                                  NJSettingSwitchViewModel *viewModel);


@end

NS_ASSUME_NONNULL_END
