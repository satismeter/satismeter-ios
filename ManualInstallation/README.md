# SatisMeter iOS SDK

[![License](https://img.shields.io/cocoapods/l/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)
[![Platform](https://img.shields.io/cocoapods/p/SatisMeter.svg?style=flat)](http://cocoapods.org/pods/SatisMeter)

SatisMeter is mobile and web platform for collecting customer feedback, based on Net Promoter Score. This package contains a survey widget that can be easily integrated into any iOS application.

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/iphone-satismeter.png)  
![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/iphone-satismeter-follow-up-question.png)

## Requirements
 - iOS 7.1+
## Installation
This build is ready to test and use. 
Move to your project->Project Navigator window and Drag and Drop 'SDK' folder. Make sure that 'Copy items if needed' is checked.
![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/Copy.png)
## Important
In your project, move to Build Settings and setup 'Other Linked Flags' with the following string:
![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/lib.png)
## Registration
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
                             andTraitsDictionary: traitsDictionary forceSurvey:NO/*YES to show survey every time*/];
```

Replace the `writeKey` with the one found in SatisMeter settings / Integrations / API Keys.

Replace `user id`, `name`, etc. with the ones of the currently logged-in user.

## Author

SatisMeter, https://satismeter.com

## License

satismeter-ios SDK is available under the MIT license. See the LICENSE file for more info.
