//
//  ViewController.m
//  SatisTests
//
//  Created by Roman Runner on 7/12/16.
//  Copyright © 2016 Roman Runner. All rights reserved.
//

#import "ViewController.h"
#import "SatisMeter.h"
@interface ViewController ()<SatisMeterCoreDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
- (IBAction)trySatisMeter:(id)sender {
    [[SatisMeter sharedInstance] showSatisMeterView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)SatisMeterViewDidShow{
    NSLog(@"SatisMeterViewDidShow");
}
-(void)SatisMeterViewDidDismiss{
    NSLog(@"SatisMeterViewDidDismiss");
}
@end
