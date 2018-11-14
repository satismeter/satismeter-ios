# Set up SatisMeter with Swift

## Install SatisMeter SDK

See [Readme](README.md) for details.

## Import header

Create [Bridging Header](https://medium.com/@alexiscreuzot/cocoapods-with-swift-e6f8ba8f0afc) and add SatisMeter import to it.

```objective-c
#import <SatisMeter/SatisMeter.h>
```

## Identify user

In your app delegate inside didFinishLaunchingWithOptions type this:

```swift
let traitsDictionary = [
    "name" : "James Bond",
    "plan" : "Gold",
    "createdAt" : "2015-11-01T00:00:00.000Z"
]

SatisMeter.sharedInstance().identifyUser(withUserId: "007", writeKey: "K7eMIPEXyPMlG7fu", andTraitsDictionary: traitsDictionary)
```

Replace the `writeKey` with the one found in SatisMeter settings / Integrations / API Keys.

Replace `user id`, `name`, etc. with the ones of the currently logged-in user.
