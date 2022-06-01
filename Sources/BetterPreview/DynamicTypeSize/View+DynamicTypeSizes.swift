import SwiftUI

public extension View {
    /// Generates previews of the view using given `DynamicTypeSizesGroup` utilizing predefined sizes group.
    ///
    /// - Parameters:
    ///   - group: The group of `DynamicTypeSize`s used to generate previews.
    ///
    /// Available groups types:
    ///  - `.all`
    ///  - `.smallestAndLargest`
    ///  - `.optimalSizes`
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewDynamicTypeSizes(.smallestAndLargest)
    ///  ```
    ///
    func previewDynamicTypeSizes(_ group: DynamicTypeSizesGroup) -> some View {
        return previewDynamicTypeSizes(group.sizes)
    }
    
    /// Generates previews of the view using array of given `DynamicTypeSize`s.
    ///
    /// - Parameters:
    ///   - sizes: The array of `DynamicTypeSize`s used to generate previews.
    ///
    /// Example use:
    ///  ```
    ///  SampleView()
    ///      .previewDynamicTypeSizes([
    ///          .large,
    ///          .accessibility1
    ///      ])
    ///  ```
    ///
    func previewDynamicTypeSizes(_ sizes: [DynamicTypeSize]) -> some View {
        return DynamicTypeSizesPreviewGroup(sizes: sizes) { self }
    }
}
