//
//  Person.m
//  Week06 Day01 Lab
//
//  Created by Jeremy Moore on 7/11/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Person.h"

@implementation Person

+(Person *) person
{
    return [[Person alloc]initWithName:@""];
}

-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        _name = name;
    }
    return self;
}

-(void)setName:(NSString *)name
{
    if (_name != name) {
        _name = [name copy];
    }
}

-(NSString *) name
{
    return _name;
}

@end
