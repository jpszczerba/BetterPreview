import SwiftUI

/// A group of preview devices, generating previews in order given in an initializer.
///
public struct PreviewDevicesGroup<Content>: View where Content: View {
    private let devices: [PreviewableDevice]
    private let content: Content

    /// Initializes content with `DevicesGroup` utilizing preconfigured devices' groups.
    ///
    /// - Parameters:
    ///   - devicesGroup: The group of devices used to generate previews.
    ///   - content: Content to build for every preview.
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
    ///  PreviewDevicesGroup(
    ///      devicesGroup: iPhonesGroup.smallestAndLargest
    ///  ) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(devicesGroup: DevicesGroup, @ViewBuilder content: @escaping () -> Content) {
        self.init(previewables: devicesGroup.devices, content: content)
    }
    
    /// Initializes content with array of given `PreviewDevice`s.
    ///
    /// - Parameters:
    ///   - devices: The array of `PreviewDevice`s used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// There are multiple predefined devices available. See `PreviewDevice` to check full list.
    ///
    /// Example use:
    ///  ```
    ///  PreviewDevicesGroup(devices: [
    ///      .iPhone_4_7_inch,
    ///      .iPhone_5_5_inch
    ///  ]) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(devices: [PreviewDevice], @ViewBuilder content: @escaping () -> Content) {
        self.init(previewables: devices, content: content)
    }
    
    /// Initializes content with array of types conforming to `PreviewableDevice` protocol.
    /// Can be useful to display multiple previews with custom types conforming to `PreviewableDevice`.
    ///
    /// - Parameters:
    ///   - previewables: The array of types conforming to `PreviewableDevice` protocol used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Example use:
    ///  ```
    ///  PreviewDevicesGroup(previewables: [
    ///      CustomDevice(),
    ///      PreviewDevice.iPhone_4_7_inch
    ///  ]) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(previewables: [PreviewableDevice], @ViewBuilder content: @escaping () -> Content) {
        self.devices = previewables
        self.content = content()
    }

    public var body: some View {
        Group {
            ForEach(devices, id: \.simulatorName) { device in
                content.preview(previewable: device)
            }
        }
    }
}
