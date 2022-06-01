import SwiftUI

/// A group of preview devices, generating previews in order given in an initializer.
///
@available(watchOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
public struct InterfaceOrientationsPreviewGroup<Content>: View where Content: View {
    private let orientations: [InterfaceOrientation]
    private let content: Content

    /// Initializes content with previews of orientations defined in the given `InterfaceOrientationsGroup`.
    ///
    /// - Parameters:
    ///   - group: The group of interfaces used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Available groups types:
    ///  - `.all`
    ///  - `.portraitAndLandscape`
    ///  - `.portraitAndBothLandscapes`
    ///
    /// Example use:
    ///  ```
    ///  InterfaceOrientationsPreviewGroup(
    ///      group: .portraitAndLandscape
    ///  ) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(group: InterfaceOrientationsGroup, @ViewBuilder content: @escaping () -> Content) {
        self.init(orientations: group.orientations, content: content)
    }
    
    /// Initializes content with `InterfaceOrientationsGroup`s array.
    ///
    /// - Parameters:
    ///   - orientations: The array of `InterfaceOrientation`s used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Example use:
    ///  ```
    ///  InterfaceOrientationsPreviewGroup(orientations: [
    ///    .portraitUpsideDown,
    ///    .landscapeRight
    ///  ]) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(orientations: [InterfaceOrientation], @ViewBuilder content: @escaping () -> Content) {
        self.orientations = orientations
        self.content = content()
    }

    public var body: some View {
        Group {
            ForEach(orientations) { orientation in
                content.previewInterfaceOrientation(orientation)
            }
        }
    }
}
