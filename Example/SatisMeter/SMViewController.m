//
//  SMViewController.m
//  SatisMeter
//
//  Created by Arben Pnishi on 03/03/2016.
//  Copyright (c) 2016 Arben Pnishi. All rights reserved.
//

#import "SMViewController.h"
#import <SatisMeter/SatisMeter.h>

@interface SMViewController ()<SatisMeterCoreDelegate>

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
    [[SatisMeter sharedInstance] showSatisMeterViewInViewController:self];
}

-(void)SatisMeterViewDidShow{
    NSLog(@"SatisMeterViewDidShow");
}
-(void)SatisMeterViewDidDismiss{
    NSLog(@"SatisMeterViewDidDismiss");
}
@end
