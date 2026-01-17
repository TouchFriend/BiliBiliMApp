//
//  NJInlineSettingViewController.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import <UIKit/UIKit.h>
#import "NJInlineSettingModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NJInlineSettingViewController : UITableViewController

@property (nonatomic, strong) NSArray<NJInlineSettingModel *> *dataSource;
/// 选中闭包
@property (nonatomic, copy) void (^selectedHandler)(NJInlineSettingModel *model);


- (instancetype)initWithStyle:(UITableViewStyle)style
                        title:(NSString *)title
                   dataSource:(NSArray<NJInlineSettingModel *> *)dataSource;

@end

NS_ASSUME_NONNULL_END
