//
//  RDViewController.h
//  Weekday
//
//  Created by socialchorus on 8/23/14.
//  Copyright (c) 2014 RaeDoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RDViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *workAddress;
@property (weak, nonatomic) IBOutlet UITextField *standupTime;

- (IBAction)saveInfo:(id)sender;

@end
