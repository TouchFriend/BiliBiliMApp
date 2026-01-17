//
//  NJInlineSettingModel.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import "NJInlineSettingModel.h"

@implementation NJInlineSettingModel

- (instancetype)initWithTitle:(NSString *)title
                         bizId:(NSString *)bizId
                      selected:(BOOL)selected {
    if (self = [super init]) {
        _title = [title copy];
        _bizId = [bizId copy];
        _selected = selected;
    }
    return self;
}

@end
