//
//  AppDelegate.m
//  SampleApp
//
//  Created by Jakub Sedlacek on 11.10.17.
//  Copyright © 2017 SatisMeter. All rights reserved.
//

#import "AppDelegate.h"
#import "SatisMeter.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSDictionary *traitsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                      @"James Bond" ,@"name",
                                      @"Gold", @"plan",
                                      @"2015-11-01T00:00:00.000Z", @"createdAt",
                                      nil];
    
    [[SatisMeter sharedInstance] identifyUserWithUserId: @"007"
                                               writeKey: @"K7eMIPEXyPMlG7fu"
                                    andTraitsDictionary: traitsDictionary];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
