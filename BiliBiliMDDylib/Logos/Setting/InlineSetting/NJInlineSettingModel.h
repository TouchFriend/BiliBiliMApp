//
//  NJInlineSettingModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJInlineSettingModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *bizId;
@property (nonatomic, assign) BOOL selected;

- (instancetype)initWithTitle:(NSString *)title
                         bizId:(NSString *)bizId
                      selected:(BOOL)selected;

@end

NS_ASSUME_NONNULL_END
