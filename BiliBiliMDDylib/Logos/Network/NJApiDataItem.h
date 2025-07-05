//
//  NJApiDataItem.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NJApiDataItem : NSObject

- (NSString *)url;

- (NSData *)handleWithData:(NSData *)data
                  response:(NSURLResponse *)response;

@end

NS_ASSUME_NONNULL_END
