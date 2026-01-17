//
//  NJInlineSettingViewController.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import "NJInlineSettingViewController.h"
#import "BBMFInlineSettingCell.h"
#import "NJInlineSettingModel.h"

static NSString * const kInlineSettingCellID = @"BBMFInlineSettingCell";

@implementation NJInlineSettingViewController

#pragma mark - Lifecycle

- (instancetype)initWithStyle:(UITableViewStyle)style
                        title:(NSString *)title
                   dataSource:(NSArray<NJInlineSettingModel *> *)dataSource {
    self = [super initWithStyle:style];
    if (self) {
        self.title = title;
        self.dataSource = dataSource;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupTableView];
}

#pragma mark - Setup

- (void)setupTableView {
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.rowHeight = 42;
    self.tableView.backgroundColor = [UIColor systemBackgroundColor];

    [self.tableView registerClass:NSClassFromString(@"BBMFInlineSettingCell")
           forCellReuseIdentifier:kInlineSettingCellID];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    BBMFInlineSettingCell *cell =
        [tableView dequeueReusableCellWithIdentifier:kInlineSettingCellID
                                        forIndexPath:indexPath];

    NJInlineSettingModel *model = self.dataSource[indexPath.row];

    [cell installWithTitle:model.title
                isSelected:model.selected];

    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    // 单选逻辑（InlineSetting 常见）
    for (NSInteger i = 0; i < self.dataSource.count; i++) {
        NJInlineSettingModel *model = self.dataSource[i];
        model.selected = (i == indexPath.row);
    }

    [tableView reloadData];

    NJInlineSettingModel *current = self.dataSource[indexPath.row];

    // 🔥 这里是你真正关心的点（埋 hook / 通知 / 偏好）
    [self handleBizSelection:current];
}

#pragma mark - Business

- (void)handleBizSelection:(NJInlineSettingModel *)model {
    if (self.selectedHandler) {
        self.selectedHandler(model);
    }
}

@end
