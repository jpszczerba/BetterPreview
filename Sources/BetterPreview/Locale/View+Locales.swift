import SwiftUI

public extension View {
    /// Generates previews of the view using array of given `Locale`s.
    ///
    /// - Parameters:
    ///   - locales: The array of `Locale`s used to generate previews.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewLocales([
    ///          .init(identifier: "en"),
    ///          .init(identifier: "fr"),
    ///          .init(identifier: "de"),
    ///          .init(identifier: "it")
    ///      ])
    ///  ```
    ///
    func previewLocales(_ locales: [Locale]) -> some View {
        return LocalesPreviewGroup(locales: locales) { self }
    }
}
