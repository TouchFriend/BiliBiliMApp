// 主页-直播详情页广告

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import "UIViewController+NJFind.h"

// 收入面板，包含礼物面板
%hook BBLiveRevenueCardsContentView

- (id)initWithDataSource:(id)source viewModel:(id)model {
    return nil;
}

%end



// 预约弹窗（关闭自动弹出）
@interface BBLiveVerticalPanelViewController : NSObject

/// 直播间出现日期
@property (nonatomic, strong) NSDate *nj_liveAppearDate;

@end

%hook BBLiveVerticalPanelViewController

/// 直播间出现日期
%property (nonatomic, strong) NSDate *nj_liveAppearDate;

- (void)viewWillAppear:(BOOL)animated {
    if (!self.nj_liveAppearDate) {
        self.nj_liveAppearDate = [NSDate date];
    }
    %orig;
}

%end

@interface BBLiveBaseAppointmentCardView : NSObject

@end

%hook BBLiveBaseAppointmentCardView

- (id)initWithEntryFrame:(CGRect)frame {
    Class livcVcClass = NSClassFromString(@"BBLiveVerticalPanelViewController");
    id liveVC = [UIViewController findViewControllerOfClass:livcVcClass];
    if (liveVC) {
        if (![liveVC nj_liveAppearDate]) {
            return nil;
        }
        NSTimeInterval timeInterval = [[NSDate date] timeIntervalSinceDate:[liveVC nj_liveAppearDate]];
        if (timeInterval < 2.0) {
            return nil;
        }
    }
    return %orig;
}

%end

