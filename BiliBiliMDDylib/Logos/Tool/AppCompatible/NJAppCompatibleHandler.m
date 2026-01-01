//
//  NJAppCompatibleHandler.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/1.
//

#import "NJAppCompatibleHandler.h"

@interface NJAppCompatibleHandler ()

/// ASLR
@property (nonatomic, assign, readwrite) intptr_t aslr;

@end

@implementation NJAppCompatibleHandler

#pragma mark - Life Cycle Methods

/// 构造器
/// - Parameter aslr: ASLR
- (instancetype)initWithAslr:(intptr_t)aslr {
    self = [super init];
    if (self) {
        self.aslr = aslr;
        [self doInit];
    }
    return self;
}

#pragma mark - Do Init

- (void)doInit {
    
}

#pragma mark - Override Methods

#pragma mark - Public Methods


/// App版本
- (NSString *)version {
    return @"";
}

/// 处理
- (void)handle {
    
}

#pragma mark - Private Methods

#pragma mark - Property Methods




@end
