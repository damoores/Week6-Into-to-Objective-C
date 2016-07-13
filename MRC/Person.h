//
//  Person.h
//  MRC
//
//  Created by Jeremy Moore on 7/12/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    NSString *_name;
    NSString *_email;
    NSString *_phoneNumber;
}

-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)setEmail:(NSString *)email;
-(NSString *)email;
-(void)setPhoneNumber:(NSString *)email;
-(NSString *)phoneNumber;

@end
