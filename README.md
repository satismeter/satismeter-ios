# SatisMeter iOS SDK

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

Import header
```objective-c
#import <SatisMeter/SatisMeter.h>
```

In your app delegate inside didFinishLaunchingWithOptions type this:

```objective-c
    NSDictionary *traitsDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                      @"John" ,@"name",
                                      @"Plan", @"Gold",
                                      @"2016-12-31T23:00:00.000Z", @"createdAt",
                                      nil];
```

At the class where you want to show the Satis Meter View, write down this piece of code:

```objective-c
  [[SatisMeter sharedInstance] showSatisMeterView];
```

## Author


SatisMeter, https://satismeter.com

## License

satismeter-ios SDK is available under the MIT license. See the LICENSE file for more info.
