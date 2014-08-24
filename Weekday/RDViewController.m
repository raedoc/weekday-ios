//
//  RDViewController.m
//  Weekday
//
//  Created by socialchorus on 8/23/14.
//  Copyright (c) 2014 RaeDoc. All rights reserved.
//

#import "RDViewController.h"

@interface RDViewController ()

@end

@implementation RDViewController

- (IBAction)saveInfo:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.workAddress.text forKey:@"workAddress"];
    [defaults setObject:self.standupTime.text forKey:@"standupTime"];
    [defaults synchronize];
}

@end
