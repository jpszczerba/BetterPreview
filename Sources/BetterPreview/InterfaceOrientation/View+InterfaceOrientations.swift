import SwiftUI

@available(watchOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
public extension View {
    /// Generates previews of the view using given `InterfaceOrientationsGroup` utilizing predefined orientations.
    ///
    /// - Parameters:
    ///   - group: The group of orientations used to generate previews.
    ///
    /// Available groups types:
    ///  - `.all`
    ///  - `.portraitAndLandscape`
    ///  - `.portraitAndBothLandscapes`
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewInterfaceOrientations(.portraitAndLandscape)
    ///  ```
    ///
    func previewInterfaceOrientations(_ group: InterfaceOrientationsGroup) -> some View {
        return previewInterfaceOrientations(group.orientations)
    }
    
    /// Generates previews of the view using array of given `InterfaceOrientation`s.
    ///
    /// - Parameters:
    ///   - orientations: The array of `InterfaceOrientation`s used to generate previews.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewInterfaceOrientations([
    ///          .portraitUpsideDown,
    ///          .landscapeRight
    ///      ])
    ///  ```
    ///
    func previewInterfaceOrientations(_ orientations: [InterfaceOrientation]) -> some View {
        return InterfaceOrientationsPreviewGroup(orientations: orientations) { self }
    }
}
