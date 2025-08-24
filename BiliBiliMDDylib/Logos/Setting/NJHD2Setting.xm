// HD设置页面

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import <objc/objc-runtime.h>
#import "NJSettingSkullTableViewCell.h"
#import "NJSettingMasterSwitchTableViewCell.h"
#import "NJSettingSkullViewModel.h"
#import "NJSettingSeparatorHeaderView.h"
#import "NJSettingDefine.h"
#import "NJSettingInjectDataProvider.h"
#import "NJShareManager.h"

@interface BBHD2PhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

// 是否是设置页面
- (BOOL)nj_isSettingViewController;
/// 是否注册过cell
@property (nonatomic, strong) NSNumber *nj_isRegisteredCell;
// 注册cell
- (void)nj_registerCell:(UITableView *)tableView;
// 注入的数据
- (NSArray<NJSettingSkullViewModel *> *)nj_injectDatas;
// 分享数据
- (NJShareManager *)nj_shareManager;

@end

%hook BBHD2PhoneSettingMainVC

// 是否注册过cell
%property (nonatomic, strong) NSNumber *nj_isRegisteredCell;

%new
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if (![self nj_isSettingViewController]) {
        return 1;
    }
    // 注册cell
    [self nj_registerCell:tableView];
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([self nj_isSettingViewController] &&
        section == [self numberOfSectionsInTableView:tableView] - 1) {
        return [[self nj_injectDatas] count];
    }
    return %orig;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    }
    NJSettingSkullViewModel *viewModel = [self nj_injectDatas][indexPath.row];
    NSString *reuseIdentifier = viewModel.cellId;
    NJSettingSkullTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier
                                    forIndexPath:indexPath];
    [cell bindViewModel:viewModel];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    }
    return 44;
}

%new
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (![self nj_isSettingViewController] ||
        indexPath.section != [self numberOfSectionsInTableView:tableView] - 1) {
        return;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NJSettingSkullViewModel *viewModel = [self nj_injectDatas][indexPath.row];
    NSString *bizId = viewModel.bizId;
    if ([bizId isEqualToString:NJ_SHARE_DATA_BIZ_ID]) { // 分享数据
        [[self nj_shareManager] shareCacheFolder];
    }
}

%new
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (![self nj_isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return nil;
    }
    
    UIView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:NJ_SEPARATOR_HEADER_ID];
    return headerView;
}

%new
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (![self nj_isSettingViewController] ||
        section != [self numberOfSectionsInTableView:tableView] - 1) {
        return 0.01;
    }
    return 14;
}

// 是否是设置页面
%new
- (BOOL)nj_isSettingViewController {
    return [self.navigationItem.title isEqualToString:@"设置"];
}

// 注入的数据
%new
- (NSArray<NJSettingSkullViewModel *> *)nj_injectDatas {
    NSArray *datas = objc_getAssociatedObject(self, @selector(nj_injectDatas));
    if (!datas) {
        NJSettingInjectDataProvider *dataProvider = [[NJSettingInjectDataProvider alloc] init];
        datas = [dataProvider injectDatas];
        objc_setAssociatedObject(self, @selector(nj_injectDatas), datas, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return datas;
}

// 分享数据
%new
- (NJShareManager *)nj_shareManager {
    NJShareManager *shareManager = objc_getAssociatedObject(self, @selector(nj_shareManager));
    if (!shareManager) {
        shareManager = [[NJShareManager alloc] init];
        objc_setAssociatedObject(self, @selector(nj_shareManager), shareManager, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return shareManager;
}

// 注册cell
%new
- (void)nj_registerCell:(UITableView *)tableView {
    if (!self.nj_isRegisteredCell || ![self.nj_isRegisteredCell boolValue]) {
        self.nj_isRegisteredCell = @(YES);
        // register cell
        [tableView registerClass:[NJSettingMasterSwitchTableViewCell class] forCellReuseIdentifier:NJ_MASTER_SWITCH_CELL_ID];
        [tableView registerClass:[NJSettingSkullTableViewCell class] forCellReuseIdentifier:NJ_COMMON_CELL_ID];
        
        // register Header
        [tableView registerClass:[NJSettingSeparatorHeaderView class] forHeaderFooterViewReuseIdentifier:NJ_SEPARATOR_HEADER_ID];
    }
}

// 屏幕旋转
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    %orig;
    
    [[self nj_shareManager] viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}

%end


