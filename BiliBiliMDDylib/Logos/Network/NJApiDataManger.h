//
//  NJApiDataManger.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJApiDataManger : NSObject

+ (instancetype)sharedInstance;

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response
                     error:(NSError *)error;

@end

NS_ASSUME_NONNULL_END
