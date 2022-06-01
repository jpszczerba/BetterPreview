import SwiftUI

public extension View {
    /// Generates preview of the view using given `PreviewDevice`.
    ///
    /// - Parameters:
    ///   - device: The predefined device of `PreviewDevice` type, used to generate previews.
    ///
    /// There are multiple predefined devices available. See `PreviewDevice` to check full list.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewDevice(.iPhone_6_1_inch_2x)
    ///  ```
    ///
    func previewDevice(_ device: PreviewDevice) -> some View {
        return preview(previewable: device)
    }
    
    /// Generates preview of the view using a type conforming to `PreviewableDevice` protocol.
    /// Can be useful to display preview of custom type conforming to `PreviewableDevice`.
    ///
    /// - Parameters:
    ///   - previewable: The type conforming to `PreviewableDevice` protocol, used to generate previews.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .preview(previewable: CustomDevice())
    ///  ```
    ///
    func preview(previewable: PreviewableDevice) -> some View {
        let device = SwiftUI.PreviewDevice(rawValue: previewable.simulatorName)
        return previewDevice(device)
            .previewDisplayName(previewable.displayName)
    }
}
