# OcArsenal
A simple lib and category arsenal by Objective-C

## Installation

> **Embedded frameworks require a minimum deployment target of iOS 8 or OS X Mavericks.**

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36 beta adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods --pre
```
To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

pod 'OcArsenal', '~> 0.1'
```
Then, run the following command:

```bash
$ pod install
```
### Carthage

Carthage is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Alamofire into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "louis-cai/OcArsenal" >= 0.1
```

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate Alamofire into your project manually.

### Embedded Framework

- Add Alamofire as a [submodule](http://git-scm.com/docs/git-submodule) by opening the Terminal, `cd`-ing into your top-level project directory, and entering the following command:

```bash
$ git submodule add https://github.com/louis-cai/OcArsenal.git
```

- Open the `OcArsenal ` folder, and drag `OcArsenal.xcodeproj` into the file navigator of your app project.
- In Xcode, navigate to the target configuration window by clicking on the blue project icon, and selecting the application target under the "Targets" heading in the sidebar.
- Ensure that the deployment target of OcArsenal.framework matches that of the application target.
- In the tab bar at the top of that window, open the "Build Phases" panel.
- Expand the "Target Dependencies" group, and add `OcArsenal.framework`.
- Click on the `+` button at the top left of the panel and select "New Copy Files Phase". Rename this new phase to "Copy Frameworks", set the "Destination" to "Frameworks", and add `OcArsenal.framework`.
