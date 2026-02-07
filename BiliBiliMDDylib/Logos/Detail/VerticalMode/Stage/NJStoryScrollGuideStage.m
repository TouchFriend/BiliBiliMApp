//
//  NJStoryScrollGuideStage.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/2/7.
//

#import "NJStoryScrollGuideStage.h"

@implementation NJStoryScrollGuideStage

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
    data[@"scroll_guide"] = nil;
    return [data copy];
}

@end
