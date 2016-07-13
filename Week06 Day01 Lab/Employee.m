//
//  Employee.m
//  Week06 Day01 Lab
//
//  Created by Jeremy Moore on 7/11/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(void) setEmployment: (BOOL *) status
{
    isEmployed = status;
}

-(void) printEmployment
{
    if (isEmployed) {
        NSLog(@"I am employed!!");
    } else {
        NSLog(@"I need a JOB!!!");
    }
}

@end
