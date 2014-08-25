#import "RDCommuterInfoViewController.h"

@interface RDCommuterInfoViewController ()

@end

@implementation RDCommuterInfoViewController

- (IBAction)saveInfo:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.workAddress.text forKey:@"workAddress"];
    [defaults setObject:self.standupTime.text forKey:@"standupTime"];
    [defaults synchronize];
    [self performSegueWithIdentifier:@"switchToWaterfall" sender:sender];
}

@end
