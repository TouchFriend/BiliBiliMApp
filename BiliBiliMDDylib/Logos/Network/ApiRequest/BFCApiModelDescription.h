//
//  BFCApiModelDescription.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2026/3/2.
//

@interface BFCApiModelDescription : NSObject

@property (retain, nonatomic) NSString *keyPath;
@property (nonatomic) _Bool isArray;
@property (retain, nonatomic) Class mappingClass;
@property (nonatomic) _Bool isOptional;

/* class methods */
+ (id)modelWith:(id)with mappingClass:(Class)_class isArray:(_Bool)array;
+ (id)modelWith:(id)with mappingClass:(Class)_class isArray:(_Bool)array isOptional:(_Bool)optional;

/* instance methods */

@end
