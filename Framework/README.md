# Installation instructions

1. Copy SatisMeter.framework to target project.
2. Add framework to a target project using 'plus' button under **Linked Frameworks and Libraries** section in **General** tab like so:

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/add_framework.png)

Update **Other Linked Flags** with the following keys:

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/flags.png)

Copy SatisMeterResources.bundle from SatisMeter.framework by path SatisMeter.framework->Versions->Current. You should add it by tapping on 'plus' button under **Build Phases** in section **Copy Bundle Reosurces**

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/Resources.png)

## Usage

### Import header
```objective-c
#import <SatisMeterFramework/SatisMeter.h>
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
