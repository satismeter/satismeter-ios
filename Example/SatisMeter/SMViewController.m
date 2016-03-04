//
//  SMViewController.m
//  SatisMeter
//
//  Created by Arben Pnishi on 03/03/2016.
//  Copyright (c) 2016 Arben Pnishi. All rights reserved.
//

#import "SMViewController.h"
#import <SatisMeter/SatisMeter.h>

@interface SMViewController ()

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)trySatisMeter:(id)sender {
    NSLog(@"isReady:%d", [SatisMeter sharedInstance].isReady);
    if ([[SatisMeter sharedInstance] isReady]) {
        [[SatisMeter sharedInstance] showSatisMeterViewInViewController:self];
    }
}

@end
