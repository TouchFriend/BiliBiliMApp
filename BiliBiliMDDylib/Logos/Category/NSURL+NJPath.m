//
//  NSURL+NJPath.m
//  OCTestProduct
//
//  Created by touchWorld on 2025/7/3.
//

#import "NSURL+NJPath.h"

@implementation NSURL (NJPath)

- (NSString *)nj_fullPath {
    NSURLComponents *components = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:NO];
    // 清空查询参数
    components.query = nil;
    return components.URL.absoluteString;
}

@end
