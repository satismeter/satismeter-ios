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

SatisMeter is available through [CocoaPods](https://cocoapods.org/pods/SatisMeter) and Manual installation from github build.

### CocoaPods

To install using CocoaPods, add the following line to your Podfile:

```ruby
pod "SatisMeter"
```

### Manual Installation

Move to your project->Project Navigator window and Drag and Drop 'ManualInstallation' folder. Make sure that 'Copy items if needed' is checked.

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/Copy.png)

*Important*: In your project, move to Build Settings and update 'Other Linked Flags' property with the following string:
![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/lib.png)

Thats it! Look at the 'Identify user' section below so to know how to use our SDK.

## Usage

### Import header
```objective-c
#import <SatisMeter/SatisMeter.h>
```

### Registration
First of all you should create your personal account in https://satismeter.com

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
