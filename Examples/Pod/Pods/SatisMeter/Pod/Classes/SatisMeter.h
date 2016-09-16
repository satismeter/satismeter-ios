//
//  SatisMeter.h
//  SatisMeter
//
//  Created by Esat Pllana on 2/24/16.
//  Copyright © 2016 SatisMeter (satismeter.com). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol SatisMeterCoreDelegate <NSObject>
@optional
/// delegate method when the view is shown
-(void)SatisMeterViewDidShow;

/// delegate method when the view is dismissed
-(void)SatisMeterViewDidDismiss;
@end

@interface SatisMeter : NSObject

+(instancetype) sharedInstance;
@property (nonatomic,weak) id delegate;

@property BOOL shouldShowSatisMeterOnActive;
@property BOOL isShown;
@property(nonatomic, strong) UIColor *mainColor;
@property(nonatomic, strong) UIColor *foregroundColor;
@property(nonatomic, strong) UIColor *backgroundColor;
@property BOOL showNumbers;
@property(nonatomic, strong) NSString *writeKey;
@property(nonatomic, strong) NSString *userId;
@property(nonatomic, strong) NSDictionary *translationWords;
@property(nonatomic, strong) NSDictionary *widgetDictionary;
@property(nonatomic, strong) NSString *serverUrl;
@property BOOL serviceRunning;
@property BOOL forceSurvey;

@property BOOL shouldShowPoweredBy;
@property BOOL isReady;


/// identify user with user_id, writeKey and traits dictionary if applicable
-(void)identifyUserWithUserId:(NSString*)Id writeKey:(NSString*)writeKey andTraitsDictionary:(NSDictionary*)traits;
/// identify user with user_id, writeKey, traits dictionary if applicable and custom server url
-(void)identifyUserWithUserId:(NSString*)Id writeKey:(NSString*)writeKey andTraitsDictionary:(NSDictionary*)traits andServerUrl:(NSString*)serverUrl;
/// show satismeter view
-(void) showSatisMeterView;

#pragma Mark -
#pragma Mark - For test purpose only

-(void)forceSurvey:(BOOL)force;

@end
