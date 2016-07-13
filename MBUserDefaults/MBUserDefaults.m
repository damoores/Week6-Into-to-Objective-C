//
//  MBUserDefaults.m
//  MBUserDefaults
//
//  Created by Jeremy Moore on 7/12/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "MBUserDefaults.h"

@interface MBUserDefaults()

@property (strong, nonatomic) NSMutableDictionary *preferences;

@end


@implementation MBUserDefaults


+ (nonnull instancetype)sharedDefaults
{
    static MBUserDefaults *sharedDefaults = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    sharedDefaults = [[[self class]alloc]init];
    });
    return sharedDefaults;
}

-(instancetype)init
{
    self = [super init];
    if (self) {
        _preferences = [self setupPreferences];
    }
    return self;
}

-(NSMutableDictionary *)setupPreferences
{
    NSError *error;
    NSData *jsondData = [NSData dataWithContentsOfURL:[self preferencesURL]];
    
    if (jsondData) {
        NSMutableDictionary *json = [NSJSONSerialization JSONObjectWithData:jsondData options:NSJSONReadingMutableContainers error:&error];
        
        if (!error && json) {
            return json;
        }
    }
    
    return [[NSMutableDictionary alloc]init];
}

-(void) setObject:(nonnull id)object forKey:(nonnull NSString *)key
{
    [self.preferences setObject:object forKey:key];
    [self sync];
}

-(nonnull id)objectForKey:(nonnull NSString *)key;
{
    return [self.preferences objectForKey:key];
}

-(void)reset;
{
    [[NSFileManager defaultManager]removeItemAtURL:[self preferencesURL] error:nil];
    [self.preferences removeAllObjects];
    [self sync];
}

-(void)sync
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self.preferences options:NSJSONWritingPrettyPrinted error:&error];
    if (!error && jsonData) {
        if ([jsonData writeToFile:[[self preferencesURL]path] atomically:YES]) {
            [[NSNotificationCenter defaultCenter]postNotificationName:kMBUserDefaultsDidUpdate object:nil];
        }
    }
}

#pragma mark - Helper Methods

-(NSURL *)documentsDirectory;
{
    return [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];
}

-(NSURL *)preferencesURL
{
    return [[self documentsDirectory]URLByAppendingPathComponent:@"preferences.json"];
}

@end
