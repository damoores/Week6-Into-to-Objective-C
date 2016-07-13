//
//  MBUserDefaults.h
//  MBUserDefaults
//
//  Created by Jeremy Moore on 7/12/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * _Nonnull const kMBUserDefaultsDidUpdate = @"com.michaelbabiy.kMBUserDefaults";

@interface MBUserDefaults : NSObject

+ (nonnull instancetype)sharedDefaults;

-(void) setObject:(nonnull id)object forKey:(nonnull NSString *)key;
-(nonnull id)objectForKey:(nonnull NSString *)key;

-(void)reset;


@end
