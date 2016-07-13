//
//  Person.h
//  Week06 Day01 Lab
//
//  Created by Jeremy Moore on 7/11/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    NSString *_name;
}

-(instancetype)initWithName:(NSString *) name;

-(void)setName:(NSString *) name;
-(NSString *) name;

+(Person *) person;

@end
