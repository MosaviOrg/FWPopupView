# FWPopupView

FWPopupView is a customizable popup library for iOS. It provides alert, sheet, date picker, menu, custom sheet, and radio button components.

## Requirements

- iOS 12 or later
- Swift 5
- Xcode 14 or later

## Installation

### Swift Package Manager

Add the package in Xcode using the following repository URL:

```text
https://github.com/MosaviOrg/FWPopupView.git
```

Select the `FWPopupView` product for your app target.

To use the package from a manifest:

```swift
.package(url: "https://github.com/MosaviOrg/FWPopupView.git", branch: "master")
```

For local development:

```swift
.package(path: "../FWPopupView")
```

SnapKit is resolved automatically as a package dependency.

### CocoaPods

```ruby
use_frameworks!
pod "FWPopupView", "~> 4.2"
```

## Usage

### Alert

```swift
import FWPopupView

let alert = FWAlertView.alert(
    title: "Title",
    detail: "Message"
) { _, _, _ in
    print("Confirmed")
}

alert.show()
```

### Sheet

```swift
let sheet = FWSheetView.sheet(
    title: "Options",
    itemTitles: ["First", "Second"],
    itemBlock: { _, index, title in
        print("Selected: \(index), \(title ?? "")")
    },
    cancenlBlock: {
        print("Cancelled")
    }
)

sheet.show()
```

### Date Picker

```swift
let datePicker = FWDateView.date { picker in
    print(picker.date)
}

datePicker.show()
```

### Menu

```swift
let menu = FWMenuView.menu(itemTitles: ["Edit", "Delete"]) { _, index, title in
    print("Selected: \(index), \(title ?? "")")
}

menu.show()
```

## License

FWPopupView is available under the MIT license.
