//
//  WeekdayTests.m
//  WeekdayTests
//
//  Created by socialchorus on 8/23/14.
//  Copyright (c) 2014 RaeDoc. All rights reserved.
//

#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "RDViewController.h"
#import "OCMock.h"

SpecBegin(RDViewController)

describe(@"saveInfo:", ^{
    __block RDViewController *viewController = nil;
    __block id mockTextField = nil;
    __block NSUserDefaults *defaults = nil;
    
    beforeEach(^{
        viewController = [[RDViewController alloc] init];
        mockTextField = OCMClassMock([UITextField class]);
        defaults = [NSUserDefaults standardUserDefaults];
    });
    
    it(@"stores commuter work address", ^{
        viewController.workAddress = mockTextField;
        OCMStub([mockTextField text]).andReturn(@"100 Pine Street, San Francisco, CA");
        [viewController saveInfo:nil];
        expect([defaults objectForKey:@"workAddress"]).to.equal(@"100 Pine Street, San Francisco, CA");
    });
    
    it(@"stores commuter standup time", ^{
        viewController.standupTime = mockTextField;
        OCMStub([mockTextField text]).andReturn(@"9:00 AM");
        [viewController saveInfo:nil];
        expect([defaults objectForKey:@"standupTime"]).to.equal(@"9:00 AM");
    });
    
    afterEach(^{
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults removeObjectForKey:@"workAddress"];
        [defaults removeObjectForKey:@"standupTime"];
    });
});

SpecEnd