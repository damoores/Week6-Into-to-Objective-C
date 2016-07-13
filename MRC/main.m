//
//  main.m
//  MRC
//
//  Created by Jeremy Moore on 7/12/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSMutableArray *addressBook = [[NSMutableArray alloc]initWithCapacity:3];
        
        Person *adam = [[Person alloc]init];
        [adam setName:@"Adam"];
        [adam setEmail:@"adam@gmail.com"];
        [adam setPhoneNumber:@"555.967.5309"];
        NSLog(@"name: %@", adam.name);

        Person *michael = [[Person alloc]init];
        [michael setName:@"Michael"];
        [michael setEmail:@"micahel@michaelbabiy.com"];
        [michael setPhoneNumber:@"503.967.5309"];
        NSLog(@"name: %@", michael.name);

        Person *derek = [[Person alloc]init];
        [derek setName:@"Derek"];
        [derek setEmail:@"me@derekgraham.com"];
        [derek setPhoneNumber:@"206.967.5309"];
        NSLog(@"name: %@", derek.name);


        [addressBook addObject:adam];
        [addressBook addObject:michael];
        [addressBook addObject:derek];
        
        NSLog(@"Address book: %@", addressBook);
        
    }
    return 0;
}
