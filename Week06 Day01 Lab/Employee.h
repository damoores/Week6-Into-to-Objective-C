//
//  Employee.h
//  Week06 Day01 Lab
//
//  Created by Jeremy Moore on 7/11/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Person.h"

@interface Employee : Person

{
    BOOL isEmployed;
}

-(void) setEmployment: (BOOL *) status;
-(void) printEmployment;

@end
