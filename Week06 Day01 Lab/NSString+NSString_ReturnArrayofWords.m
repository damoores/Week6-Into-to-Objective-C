//
//  NSString+NSString_ReturnArrayofWords.m
//  Week06 Day01 Lab
//
//  Created by Jeremy Moore on 7/11/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "NSString+NSString_ReturnArrayofWords.h"

@implementation NSString (NSString_ReturnArrayofWords)

+(NSArray *)returnArrayOfWords:(NSString *)inputString
{
    NSArray *result = [inputString componentsSeparatedByString:@" "];
    return result;
}

@end
