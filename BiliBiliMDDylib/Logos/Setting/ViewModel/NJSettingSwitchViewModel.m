//
//  NJSettingSwitchViewModel.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/6.
//

#import "NJSettingSwitchViewModel.h"

@implementation NJSettingSwitchViewModel

- (instancetype)initWithBizId:(NSString *)bizId
                       cellId:(NSString *)cellId
                        title:(NSString *)title
                           on:(BOOL)on
                      saveKey:(NSString *)saveKey {
    self = [super initWithBizId:bizId
                         cellId:cellId
                          title:title];
    if (self) {
        self.on = on;
        self.saveKey = saveKey;
    }
    return self;
}

@end
