# SatisMeter

[![CI Status](http://img.shields.io/travis/Arben Pnishi/SatisMeter.svg?style=flat)](https://travis-ci.org/Arben Pnishi/SatisMeter)
[![Version](https://img.shields.io/cocoapods/v/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)
[![License](https://img.shields.io/cocoapods/l/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)
[![Platform](https://img.shields.io/cocoapods/p/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)

SatisMeter is mobile and web platform for collecting customer feedback, based on Net Promoter Score. This package contains a survey widget that can be easily integrated into any iOS application.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
 
 - iOS 7.1+


## Installation

SatisMeter is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:



```ruby
pod "SatisMeter"
```

```objective-c
#import <APPod/SatisMeter.h>

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
// Override point for customization after application launch.
NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
[formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.zzz"];
NSString *todayDate = [formatter stringFromDate:[NSDate date]];


NSDictionary *traitsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Esat",@"name",todayDate,@"createdAt",@"iPhone6",@"DeviceModel",@"9.2",@"iOSVersion", nil];

[[SatisMeter sharedInstance] identifyUserWithUserId:@"005" writeKey:@"6bBd6aAtcdBVSZoY" andTraitsDictionary:traitsDictionary];

return YES;

}
```
At the class where you want to show the Satis Rate view write down this piece of code:

```objective-c

if ([[SatisMeter sharedInstance] isReady]) {
[[SatisMeter sharedInstance] showSatisMeterViewInViewController:self];
}
```

## Author

Satis Meter, satismeter.com

## License

SatisMeter is available under the MIT license. See the LICENSE file for more info.

