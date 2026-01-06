//
//  NJSettingSkullViewModel.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/8/11.
//

#import "NJSettingSkullViewModel.h"

@implementation NJSettingSkullViewModel

- (instancetype)initWithBizId:(NSString *)bizId
                       cellId:(NSString *)cellId
                        title:(NSString *)title {
    self = [super init];
    if (self) {
        self.bizId = bizId;
        self.cellId = cellId;
        self.title = title;
    }
    return self;
}



@end
