// HD设置页面

#import <UIKit/UIKit.h>
#import "NJCommonDefine.h"
#import <objc/objc-runtime.h>
#import "NJSettingSkullTableViewCell.h"
#import "NJSettingSkullViewModel.h"
#import "NJSettingSeparatorHeaderView.h"
#import "NJSettingDefine.h"
#import "NJSettingInjectDataProvider.h"
#import "NJSettingBizHandler.h"
#import "NJSettingSwitchTableViewCell.h"
#import "NJSettingArrowTableViewCell.h"

@interface BBHD2PhoneSettingMainVC : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (retain, nonatomic) UITableView *tableView;
// 是否是设置页面
- (BOOL)nj_isSettingViewController;
/// 是否注册过cell
@property (nonatomic, strong) NSNumber *nj_isRegisteredCell;
// 注册cell
- (void)nj_registerCell:(UITableView *)tableView;
// 注入的数据
- (NSArray<NJSettingSkullViewModel *> *)nj_injectDatas;
// 处理业务
- (NJSettingBizHandler *)nj_bizHandler;

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
    cell.eventManager = self.nj_bizHandler.eventManager;
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
    [[self nj_bizHandler] handleBizWithViewModel:viewModel];
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
    return self.nj_bizHandler.injectDatas;
}

// 处理业务
%new
- (NJSettingBizHandler *)nj_bizHandler {
    NJSettingBizHandler *bizHandler = objc_getAssociatedObject(self, @selector(nj_bizHandler));
    if (!bizHandler) {
        bizHandler = [[NJSettingBizHandler alloc] initWithSettingViewController:self tableView:self.tableView];
        objc_setAssociatedObject(self, @selector(nj_bizHandler), bizHandler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return bizHandler;
}

// 注册cell
%new
- (void)nj_registerCell:(UITableView *)tableView {
    if (!self.nj_isRegisteredCell || ![self.nj_isRegisteredCell boolValue]) {
        self.nj_isRegisteredCell = @(YES);
        // register cell
        [tableView registerClass:[NJSettingSwitchTableViewCell class] forCellReuseIdentifier:NJ_SWITCH_CELL_ID];
        [tableView registerClass:[NJSettingSkullTableViewCell class] forCellReuseIdentifier:NJ_COMMON_CELL_ID];
        [tableView registerClass:[NJSettingArrowTableViewCell class] forCellReuseIdentifier:NJ_ARROW_CELL_ID];
        
        // register Header
        [tableView registerClass:[NJSettingSeparatorHeaderView class] forHeaderFooterViewReuseIdentifier:NJ_SEPARATOR_HEADER_ID];
    }
}

// 屏幕旋转
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    %orig;
    
    [[[self nj_bizHandler] shareManager] viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}

%end

