//
//  ViewController.m
//  Week06 Day01 Lab
//
//  Created by Jeremy Moore on 7/11/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    NSString *input = @"The quick brown fox jumped over the two lazy dogs";
    NSArray *result = [NSString returnArrayOfWords:input];
    NSLog(@"%@", result);
    
    NSNumber *numberInput = [NSNumber numberWithInt:25];
    NSString *stringInput = @"code fellows";
    NSArray *arrayInput = @[@1, @2, @3, @4, @"fee", @"fi", @"fo", @"fum", @"foo", @"bar", @YES, @NO, @NO, @NO];
    
    [self multipleInput:numberInput];
    [self multipleInput:stringInput];
    [self multipleInput:arrayInput];

}

-(void) multipleInput: (id)input
{
    if ([input isKindOfClass:[NSNumber class]]) {
        NSLog(@"%f", sqrt([input floatValue]));
        
    } else if ([input isKindOfClass:[NSString class]]) {
        NSMutableString *reversedString = [NSMutableString string];
        NSInteger index = [input length];
        while (index > 0) {
            index--;
            NSString *letter = [input substringWithRange:NSMakeRange(index, 1)];
            [reversedString appendString:letter];
        }
        NSLog(@"%@", reversedString);
        
    } else if ([input isKindOfClass:[NSArray class]]) {
        NSMutableDictionary *typeCount = [NSMutableDictionary dictionary];
        for (id element in input) {
            NSString *name = NSStringFromClass([element class]);
            if ([typeCount objectForKey:name] == 0) {
                NSInteger currentCount = 1;
                [typeCount setObject:[NSNumber numberWithInteger:currentCount] forKey:name];
            } else {
                NSInteger currentCount = [[typeCount objectForKey:name] integerValue];
                currentCount++;
                [typeCount setObject:[NSNumber numberWithInteger:currentCount] forKey:name];
            }
        }
        for (NSString *key in typeCount)
            NSLog(@"%@: %@", key, [typeCount objectForKey:key]);
        
    } else {
        NSLog(@"Input type must be NSNumber, NSString, or NSArray. Try again");
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
