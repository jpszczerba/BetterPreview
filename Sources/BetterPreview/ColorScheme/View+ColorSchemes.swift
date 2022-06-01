import SwiftUI

@available(watchOS, unavailable)
public extension View {
    /// Generates previews of the view using given `ColorSchemesGroup` utilizing predefined color schemes group.
    ///
    /// - Parameters:
    ///   - group: The group of `ColorScheme`s used to generate previews.
    ///
    /// Available groups types:
    ///  - `.both`
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewColorSchemes(.both)
    ///  ```
    ///
    func previewColorSchemes(_ group: ColorSchemesGroup) -> some View {
        return previewColorSchemes(group.schemes)
    }
    
    /// Generates previews of the view using array of given `ColorScheme`s. Can be useful to define different order of previewed color schemes.
    ///
    /// - Parameters:
    ///   - colorSchemes: The array of `ColorScheme`s used to generate previews.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewColorSchemes([
    ///          .dark,
    ///          .light
    ///      ])
    ///  ```
    ///
    func previewColorSchemes(_ colorSchemes: [ColorScheme]) -> some View {
        return ColorSchemesPreviewGroup(colorSchemes: colorSchemes) { self }
    }
}
