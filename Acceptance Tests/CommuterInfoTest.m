#import "Specta.h"
#import <KIF.h>

SpecBegin(CommuterInfo)

describe(@"Commuter information", ^{

    it(@"lets the commuter enter their workplace and time", ^{
        [tester enterText:@"123 Mission Street, San Francisco, CA"
                intoViewWithAccessibilityLabel:@"Work Address"];
        [tester enterText:@"9:00 AM"
                intoViewWithAccessibilityLabel:@"Standup Time"];

        [tester tapViewWithAccessibilityLabel:@"Save"];
        
        [tester waitForViewWithAccessibilityLabel:@"Waterfall"];
    });

    afterEach(^{
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults removeObjectForKey:@"workAddress"];
        [defaults removeObjectForKey:@"standupTime"];
    });
});

SpecEnd