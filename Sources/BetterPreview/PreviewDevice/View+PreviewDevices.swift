import SwiftUI

public extension View {
    /// Generates previews of the view using given `DevicesGroup` utilizing preconfigured devices' groups.
    ///
    /// - Parameters:
    ///   - devicesGroup: The group of devices used to generate previews.
    ///
    /// Available groups types:
    ///  - `iPhonesGroup`
    ///  - `iPadsGroup`
    ///  - `AppleWatchesGroup`
    ///
    /// Every type has 4 available groups:
    ///  - `.allSizes`
    ///  - `.smallestAndLargest`
    ///  - `.optimalSizes`
    ///  - `.newestModelsSizes`
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewDevices(iPhonesGroup.smallestAndLargest)
    ///  ```
    ///
    func previewDevices(_ group: DevicesGroup) -> some View {
        return previewDevices(group.devices)
    }
    
    /// Generates previews of the view using array of given `PreviewDevice`s.
    ///
    /// - Parameters:
    ///   - devices: The array of `PreviewDevice`s used to generate previews.
    ///
    /// There are multiple predefined devices available. See `PreviewDevice` to check full list.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewDevices([
    ///          .iPhone_4_7_inch,
    ///          .iPhone_5_5_inch
    ///      ])
    ///  ```
    ///
    func previewDevices(_ devices: [PreviewDevice]) -> some View {
        return PreviewDevicesGroup(devices: devices) { self }
    }
    
    /// Generates previews of the view using array of types conforming to `PreviewableDevice` protocol.
    /// Can be useful to display multiple previews with custom types conforming to `PreviewableDevice`.
    ///
    /// - Parameters:
    ///   - previewables: The array of types conforming to `PreviewableDevice` protocol, used to generate previews.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .preview(previewables: [
    ///          CustomDevice(),
    ///          PreviewDevice.iPhone_4_7_inch
    ///      ])
    ///  ```
    ///
    func preview(previewables: [PreviewableDevice]) -> some View {
        return PreviewDevicesGroup(previewables: previewables) { self }
    }
}
