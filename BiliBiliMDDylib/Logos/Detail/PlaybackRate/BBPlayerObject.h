//
//  BBPlayerObject.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/11/7.
//

#ifndef BBPlayerObject_h
#define BBPlayerObject_h

#import <UIKit/UIKit.h>
#import "BBPlayerContext.h"

@interface BBPlayerObject : NSObject

@property (readonly, weak, nonatomic) BBPlayerContext *context;
@property (readonly, nonatomic) _Bool active;
@property (readonly, nonatomic) BBPlayerObject *base;
@property (readonly) unsigned long long hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;

/* instance methods */
- (void)bbp_observeObj:(id)obj keyPath:(id)path block:(id )block;
- (void)bbp_observeObj:(id)obj keyPath:(id)path options:(unsigned long long)options block:(id )block;
- (void)bbp_observeObj:(id)obj filter:(_Bool)filter keyPath:(id)path options:(unsigned long long)options block:(id )block;
- (void)bbp_syncObserveObj:(id)obj keyPath:(id)path options:(unsigned long long)options block:(id )block;
- (void)bbp_removeFromObserve:(id)observe keyPath:(id)path;
- (id)disposableTable;
- (void)setDisposableTable:(id)table;
- (id)initWithContext:(id)context;
- (void)rebindContext:(id)context;
- (void)resetOwnerObject;
- (_Bool)isActive;

@end

#endif /* BBPlayerObject_h */
