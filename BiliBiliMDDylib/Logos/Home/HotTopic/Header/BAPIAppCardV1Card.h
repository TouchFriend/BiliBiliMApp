//
//  BAPIAppCardV1Card.h
//  BiliBiliTweak
//
//  Created by touchWorld on 2025/7/14.
//

#ifndef BAPIAppCardV1Card_h
#define BAPIAppCardV1Card_h

#import <UIKit/UIKit.h>
#import "BAPIAppCardV1SmallCoverV5.h"

@interface BAPIAppCardV1Card : NSObject

@property (readonly, nonatomic) int itemOneOfCase;
@property (retain, nonatomic) BAPIAppCardV1SmallCoverV5 *smallCoverV5;


@end

#endif /* BAPIAppCardV1Card_h */
