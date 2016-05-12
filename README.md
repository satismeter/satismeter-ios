# SatisMeter iOS SDK

[![CI Status](http://img.shields.io/travis/satismeter/satismeter-ios.svg?style=flat)](https://travis-ci.org/satismeter/satismeter-ios)
[![Version](https://img.shields.io/cocoapods/v/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)
[![License](https://img.shields.io/cocoapods/l/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)
[![Platform](https://img.shields.io/cocoapods/p/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)

SatisMeter is mobile and web platform for collecting customer feedback, based on Net Promoter Score. This package contains a survey widget that can be easily integrated into any iOS application.

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/iphone-satismeter.png)  ![Screenshot](https://github.com/satismeter/satismeter-ios/blob/master/Images/iphone-satismeter-follow-up-question.png)

## Requirements
 - iOS 7.1+

## Installation

SatisMeter is available through [CocoaPods](https://cocoapods.org/pods/SatisMeter). To install
it, simply add the following line to your Podfile:

```ruby
pod "SatisMeter"
```

## Usage

### Import header
```objective-c
#import <SatisMeter/SatisMeter.h>
```

### Identify user

In your app delegate inside didFinishLaunchingWithOptions type this:

```objective-c
NSDictionary *traitsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                 @"James Bond" ,@"name",
                                 @"Gold", @"plan",
                                 @"2015-11-01T00:00:00.000Z", @"createdAt",
                                 nil];

[[SatisMeter sharedInstance] identifyUserWithUserId: @"007"
                             writeKey: @"K7eMIPEXyPMlG7fu"
                             andTraitsDictionary: traitsDictionary];
```

Replace the `writeKey` with the one found in SatisMeter settings / Integrations / API Keys.

Replace `user id`, `name`, etc. with the ones of the currently logged-in user.

## Author

SatisMeter, https://satismeter.com

## License

satismeter-ios SDK is available under the MIT license. See the LICENSE file for more info.
