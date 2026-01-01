//
//  NJAppCompatibleDispatcher.m
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/1/1.
//

#import "NJAppCompatibleDispatcher.h"
#import "NJAppCompatibleHandler.h"
#import "NJPluginInfo.h"
#import "NJAppCompatible_8_41_0_Handler.h"
#import "NJAppCompatible_8_76_0_Handler.h"

@interface NJAppCompatibleDispatcher ()

/// ASLR
@property (nonatomic, assign, readwrite) intptr_t aslr;

/// 需要注册的类
@property (nonatomic, strong, readonly) NSArray<Class> *itemClasses;
/// 数据处理项
@property (nonatomic, strong) NSMutableDictionary<NSString *, NJAppCompatibleHandler*> *itemDic;

@end

@implementation NJAppCompatibleDispatcher

@synthesize itemClasses = _itemClasses;


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
    self.itemDic = [NSMutableDictionary dictionary];
    [self registerItems];
}

- (void)registerItems {
    for (Class itemClass in self.itemClasses) {
        NJAppCompatibleHandler *item = [[itemClass alloc] initWithAslr:self.aslr];
        NSString *version = item.version;
        if (version.length == 0) {
            continue;
        }
        self.itemDic[version] = item;
    }
}

#pragma mark - Override Methods

#pragma mark - Public Methods

/// 处理
- (void)handle {
    NSString *appVersion = [NJPluginInfo appVersion];
    if (appVersion.length == 0) {
        return;
    }
    NJAppCompatibleHandler *item = self.itemDic[appVersion];
    if (!item) {
        return;
    }
    [item handle];
}

#pragma mark - Private Methods

#pragma mark - Property Methods

- (NSArray<Class> *)itemClasses {
    if (!_itemClasses) {
        _itemClasses = @[[NJAppCompatible_8_41_0_Handler class],        // 8.41.0
                         [NJAppCompatible_8_76_0_Handler class],        // 8.76.0
        ];
    }
    return _itemClasses;
}

@end
