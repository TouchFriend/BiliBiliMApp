//
//  BBPlayerPlayerRateModel.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/10/30.
//

#ifndef BBPlayerPlayerRateModel_h
#define BBPlayerPlayerRateModel_h

#import <UIKit/UIKit.h>

@interface BBPlayerPlayerRateModel : NSObject // (Swift)

@property (nonatomic) double value;
@property (nonatomic, copy) NSString *text;

/* instance methods */
- (id)initWithValue:(double)value text:(id)text;
- (id)init;

@end

#endif /* BBPlayerPlayerRateModel_h */
