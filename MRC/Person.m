//
//  Person.m
//  MRC
//
//  Created by Jeremy Moore on 7/12/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "Person.h"

@implementation Person

#pragma mark - setters/getters

-(void)setName:(NSString *)name
{
    if (_name != name) {
        [name retain];
        [_name release];
        _name = name;
    }
}

-(NSString *)name
{
    return _name;
}

-(void)setEmail:(NSString *)email
{
    if (_email != email) {
        [email retain];
        [_email release];
        _email = email;
    }
}

-(NSString *)email
{
    return _email;
}

-(void)setPhoneNumber:(NSString *)phoneNumber
{
    if (_phoneNumber != phoneNumber) {
        [phoneNumber retain];
        [_phoneNumber release];
        _phoneNumber = phoneNumber;
    }
}

-(NSString *)phoneNumber
{
    return _phoneNumber;
}

//-(NSString *)description
//{
//    NSString *description = [[[NSString alloc]initWithFormat:@"Name: %@, Email: %@, Phone Number: %@", self.name, self.email, self.phoneNumber] autorelease];
//    
//    return description;
//    
//}

-(void)dealloc
{
    [_name release];
    [_email release];
    [_phoneNumber release];
    
    NSLog(@"Retain count: %li", [self retainCount]);
    
    [super dealloc];
}

@end













