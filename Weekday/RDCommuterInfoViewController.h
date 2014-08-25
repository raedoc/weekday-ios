#import <UIKit/UIKit.h>

@interface RDCommuterInfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *workAddress;
@property (weak, nonatomic) IBOutlet UITextField *standupTime;

- (IBAction)saveInfo:(id)sender;

@end
