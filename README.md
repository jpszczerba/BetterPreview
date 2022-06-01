## BetterPreview

A set of extensions meant to ease multiple SwiftUI previews creation with a convenient API. With just a few lines of code you can preview different devices, color schemes, locales, dynamic type sizes and more.


## Why?

Previewing a SwiftUI View on different devices is usually achieved by specifying a Simulator device with a raw String:
```swift
ExampleView()
    .previewDevice("iPhone 13 mini")
```

Moreover, with more devices and preview, this quickly results in a lot of boilerplate code, with multiple raw Strings representing different devices.
 ```swift
let devices = ["iPod touch (7th generation)", "iPhone SE (3rd generation)", "iPhone 8 Plus", "iPhone 13 mini", "iPhone 13 Pro Max"]
return ForEach(devices, id: \.self) { device in
    ExampleView()
        .previewDevice(PreviewDevice(rawValue: device))
}
 ```

What we actually need to achieve is testing a View on different screen sizes, not specific devices.
With BetterPreview you can focus on predefined screen sizes and create a preview by simply using:
```swift
ExampleView()
    .previewDevice(.iPhone_5_4_inch)
```

or for multiple screen sizes:
```swift
ExampleView()
    .previewDevices([
        .iPhone_4_0_inch,
        .iPhone_4_7_inch,
        .iPhone_5_5_inch,
        .iPhone_5_4_inch,
        .iPhone_6_7_inch,
    ])
```

Specific devices enum implementation is going to be added in future.


## Requirements

It requires:
- Xcode 13.0+
- Swift 5.5+

It is available for all platforms with minimum versions of:
- iOS 15.0+
- iPadOS 15.0+
- watchOS 8.0+
- tvOS 15.0+
- macOS 12.0+

Older versions implementation is going to be added in future.


## Installation

BetterPreview can be easily used with Swift Package Manager.

In Xcode, open `File` → `Swift Packages` → `Add Package Dependency` and enter `https://github.com/jpszczerba/BetterPreview`.


### Integration
When the package is added to your project, simply add `import BetterPreview` in a preview file and use modifiers on your view.
```swift
import SwiftUI
import BetterPreview

struct ExampleView: View {
    var body: some View { ... }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
            .previewDevice(.iPhone_6_7_inch)
    }
}
```


## Features

For more details, please refer to the technical documentation (available also through Quick Help) for every type.

### Sample

The sample project demonstrating features and different use cases is available at: https://github.com/jpszczerba/BetterPreviewSample.


### Preview Device

```swift
SampleView()
    .previewDevice(.iPhone_6_1_inch_2x)

// or:

SampleView()
    .previewDevices([
        .iPhone_4_7_inch,
        .iPhone_5_5_inch
    ])

// or:

SampleView()
    .previewDevices(iPhonesGroup.smallestAndLargest)
```

#### Custom previewable device

If the predefined devices are not enough, a new custom previewble device can be implemented by conforming to protocol `PreviewableDevice`.

```swift
struct CustomDevice: PreviewableDevice {
    var displayName: String {
        "Custom iPhone 12 mini"
    }
    
    var simulatorName: String {
        "iPhone 12 mini"
    }
}

SampleView()
    .preview(previewables: [
        CustomDevice(),
        PreviewDevice.iPhone_4_7_inch
    ])
```

A list of supported preview device names can be fetched by running in the Terminal:
```bash
% xcrun simctl list devicetypes
```

### Color Scheme

```swift
SampleView()
    .previewColorSchemes(.both)
    
// or:

SampleView()
    .previewColorSchemes([
        .dark,
        .light
    ])
```

### Dynamic Type Size

```swift
SampleView()
    .previewDynamicTypeSizes(.smallestAndLargest)

// or:

SampleView()
    .previewDynamicTypeSizes([
        .large,
        .accessibility1
    ])
```

### Interface Orientation

```swift
SampleView()
    .previewInterfaceOrientations(.portraitAndLandscape)

// or:

SampleView()
    .previewInterfaceOrientations([
        .portraitUpsideDown,
        .landscapeRight
    ])
```

### Locale

```swift
SampleView()
    .previewLocales([
        .init(identifier: "en"),
        .init(identifier: "fr"),
        .init(identifier: "de"),
        .init(identifier: "it")
    ])
```

### UIKit

```swift
UIViewPreview {
    MKMapView()
}

// or:

UIViewControllerPreview {
    UIImagePickerController()
}
```


## Troubleshooting

#### Cannot preview in this file
If you see `Cannot preview in this file` error, with description: `This app was not build to support this device family`, most probably a wrong target is selected. Selected target need to match the preview being generated. E.g. Apple Watch Previews cannot be displayed when iOS target is in use. It is Xcode's limitation.   

#### Incorrect device on canvas
If a device isn't correctly rendered on canvas, please check if the selected device is available on Xcode's simulators list.
The complete list of simulators used by BetterPreview is available in Simulators section, at the end of this README.

You can download or add more simulators in menu: Product -> Destination -> Add Additional Simulators...


## Limitations

 - Simultanous watchOS and iOS previews in Xcode project (however possible in Swift Package)
 - Xcode cannot display more than 15 previews simultanousely 
 - UIKit views and view controllers are being fully rendered only in live preview
 - Dynamic Type Size is not previewable on tvOS and macOS


## Roadmap

 - Add no-op code for release builds.
 - Specific devices usable in previewDevice.
 - Support for older platforms'.
 - Automation of required simulators installation.
 - Custom simulators initialization.
 - NSView preview.
 - YAML configuration for all previews.
 - Proper online documentation.


## License

BetterPreview is released under the MIT license. See [LICENSE](LICENSE) for more information.


## Previewing Tips

### Shortcuts

To display canvas on the current view, use:
Option + Command + return (⌥ + ⌘ + ↩)

To resume the preview and render content, use:
Option + Command + P (⌥ + ⌘ + P)


## Simulators

In order to render preview on canvas, BetterPreview uses predefined simulators:

iPhones
 - 4": `iPod touch (7th generation)`
 - 4.7": `iPhone SE (3rd generation)`
 - 5.4": `iPhone 13 mini`
 - 5.5": `iPhone 8 Plus`
 - 5.8": `iPhone 11 Pro`
 - 6.1" @2x: `iPhone 11`
 - 6.1" @3x: `iPhone 13 Pro`
 - 6.5": `iPhone 11 Pro Max`
 - 6.7": `iPhone 13 Pro Max`

iPads:
 - 7.9": `iPad mini (5th generation)` (usually not installed in fresh Xcode 13)
 - 8.3": `iPad mini (6th generation)`
 - 9.7": `iPad Pro (9.7-inch)`
 - 10.2": `iPad (9th generation)`
 - 10.5": `iPad Air (3rd generation)` (usually not installed in fresh Xcode 13)
 - 10.9": `iPad Air (5th generation)`
 - 11": `iPad Pro (11-inch) (3rd generation)`
 - 12.9": `iPad Pro (12.9-inch) (5th generation)`

Apple Watches:
 - 38mm: `Apple Watch 3 - 38mm` (usually not installed in fresh Xcode 13)
 - 40mm: `Apple Watch 6 - 40mm`
 - 41mm: `Apple Watch 7 - 41mm`
 - 42mm: `Apple Watch 3 - 42mm` (usually not installed in fresh Xcode 13)
 - 44mm: `Apple Watch 6 - 44mm`
 - 45mm: `Apple Watch 7 - 45mm`
