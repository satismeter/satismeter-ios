# Installation instructions

Download [SatisMeter.xcframework](https://github.com/satismeter/satismeter-ios/tree/main/XCFramework/SatisMeter.xcframework) from github, and drag-and-drop it to the target project.

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/add_xcframework.png)

## Usage

### Import header

```swift
import SatisMeterFramework

```

### Registration

First of all you should create your account in https://satismeter.com

### Identify user

In your app delegate inside didFinishLaunchingWithOptions type this:

```swift
let traitsDictionary = [
    "name" : "James Bond",
    "plan" : "Gold",
    "createdAt" : "2015-11-01T00:00:00.000Z"
]

SatisMeter.sharedInstance().identifyUser(
    withUserId: "007",
    writeKey: "K7eMIPEXyPMlG7fu",
    andTraitsDictionary: traitsDictionary
)
```

Replace the `writeKey` with the one found in SatisMeter settings / Integrations / API Keys.

Replace `user id`, `name`, etc. with the ones of the currently logged-in user.

## Author

SatisMeter, https://satismeter.com

## License

satismeter-ios SDK is available under the MIT license. See the LICENSE file for more info.
