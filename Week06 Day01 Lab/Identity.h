//
//  Identity.h
//  Week06 Day01 Lab
//
//  Created by Jeremy Moore on 7/11/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Identity <NSObject>

+(NSString) identifier;

@optional
-(void) otherThing;

@end
