import SwiftUI

/// A group of locales, generating previews in order given in an initializer.
///
public struct LocalesPreviewGroup<Content>: View where Content: View {
    private let locales: [Locale]
    private let content: Content
    
    /// Initializes content with `Locale`s array.
    ///
    /// - Parameters:
    ///   - locales: The array of `Locales`s used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Example use:
    ///  ```
    ///  LocalesPreviewGroup(locales: [
    ///      .init(identifier: "en"),
    ///      .init(identifier: "fr"),
    ///      .init(identifier: "de"),
    ///      .init(identifier: "it")
    ///  ]) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(locales: [Locale], @ViewBuilder content: @escaping () -> Content) {
        self.locales = locales
        self.content = content()
    }
    
    public var body: some View {
        Group {
            ForEach(locales, id: \.self) { locale in
                content.environment(\.locale, locale)
            }
        }
    }
}
