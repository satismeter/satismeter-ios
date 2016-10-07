# Installation instructions

1. Copy SatisMeter.framework to target project.
2. Add framework to a target project using 'plus' button under **Linked Frameworks and Libraries** section in **General** tab like so:

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/add_framework.png)

Update **Other Linked Flags** with the following keys:

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/flags.png)

Copy SatisMeterResources.bundle from SatisMeter.framework by path SatisMeter.framework->Versions->Current. You should add it by tapping on 'plus' button under **Build Phases** in section **Copy Bundle Reosurces**

![Screenshot](https://raw.githubusercontent.com/satismeter/satismeter-ios/master/Images/Resources.png)

Thats it!
