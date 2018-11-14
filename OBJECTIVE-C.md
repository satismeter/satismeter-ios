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