import SwiftUI

@available(watchOS, unavailable)
public struct ColorSchemesPreviewGroup<Content>: View where Content: View {
    private let colorSchemes: [ColorScheme]
    private let content: Content

    /// Initializes content with previews of orientations defined in the given `ColorSchemesGroup`.
    ///
    /// - Parameters:
    ///   - group: The group of `ColorScheme`s used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Available groups types:
    ///  - `.both`
    ///
    /// Example use:
    ///  ```
    ///  ColorSchemesPreviewGroup(group: .both) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(group: ColorSchemesGroup, @ViewBuilder content: @escaping () -> Content) {
        self.init(colorSchemes: group.schemes, content: content)
    }
    
    /// Initializes content with `ColorScheme`s array.
    ///
    /// - Parameters:
    ///   - colorSchemes: The array of `ColorScheme`s used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Example use:
    ///  ```
    ///  ColorSchemesPreviewGroup(colorSchemes: [
    ///      .dark,
    ///      .light
    ///  ]) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(colorSchemes: [ColorScheme], @ViewBuilder content: @escaping () -> Content) {
        self.colorSchemes = colorSchemes
        self.content = content()
    }

    public var body: some View {
        Group {
            ForEach(colorSchemes, id: \.self) { colorScheme in
                content.preferredColorScheme(colorScheme)
            }
        }
    }
}
