//
//  NJStoryCreativeEntranceStage.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import "NJStoryCreativeEntranceStage.h"

@implementation NJStoryCreativeEntranceStage

- (nullable id)processInput:(nullable id)input error:(NSError *__autoreleasing  _Nullable * _Nullable)error { 
    if (![input isKindOfClass:[NSDictionary class]]) {
        if (error) {
            *error = [NSError errorWithDomain:@"NJPipelineError"
                                         code:1001
                                     userInfo:@{
                                         NSLocalizedDescriptionKey:
                                             @"Invalid input type"
                                     }];
        }
        return nil;
    }
    
    NSMutableDictionary *data = [NSMutableDictionary dictionaryWithDictionary:(NSDictionary *)input];
    data[@"creative_entrance"] = nil;
    return [data copy];
}

@end
