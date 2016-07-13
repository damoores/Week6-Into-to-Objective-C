//
//  ViewController.m
//  MBUserDefaults
//
//  Created by Jeremy Moore on 7/12/16.
//  Copyright © 2016 Jeremy Moore. All rights reserved.
//

#import "ViewController.h"
#import "MBUserDefaults.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

- (IBAction)statusChanged:(id)sender;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(updateStatusLabel:)
                                                name:kMBUserDefaultsDidUpdate object:nil]; {
        [self.statusLabel setText:@"User updated.."];
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateStatusLabel:(NSNotification *)notification
{
    self.statusLabel.text = [NSString stringWithFormat:@"Status: %@", [[[MBUserDefaults sharedDefaults]objectForKey:@"com.michaelbabiy.kUserPreferences"]boolValue] ? @"ON" : @"OFF"];
}


- (IBAction)statusChanged:(UISwitch *)sender {
    [[MBUserDefaults sharedDefaults]setObject:@(sender.isOn) forKey:@"com.michaelbabiy.kUserPreferences"];

}
@end
