//
//  SatisMeter.h
//  SatisMeter
//
//  Developed by Appsix Mobile on 2/24/16.
//  Copyright © 2016 SatisMeter (satismeter.com). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol SatisMeterCoreDelegate <NSObject>
@optional

/// This method is called when the SatisView is shown
-(void)SatisMeterViewDidShow;

/// This method is called when the SatisView is dismissed
-(void)SatisMeterViewDidDismiss;
@end

@interface SatisMeter : NSObject

+(instancetype) sharedInstance;
@property (nonatomic,weak) id delegate;

/// This is the authentication method and needs to be called before any other method. Parameter 'traits' can be valued by your preferences
-(void)identifyUserWithUserId:(NSString*)Id writeKey:(NSString*)writeKey andTraitsDictionary:(NSDictionary*)traits;

/// Returns YES if the SatisMeterView is ready to be displayed.
@property BOOL isReady;

/// Method called to show the Satis Rate view
-(void) showSatisMeterViewInViewController:(UIViewController *)viewController;

@end
