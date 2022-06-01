import SwiftUI

public struct DynamicTypeSizesPreviewGroup<Content>: View where Content: View {
    private let sizes: [DynamicTypeSize]
    private let content: Content

    /// Initializes content with previews of orientations defined in the given `DynamicTypeSizesGroup`.
    ///
    /// - Parameters:
    ///   - group: The group of `DynamicTypeSize`s used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Available groups types:
    ///  - `.all`
    ///  - `.smallestAndLargest`
    ///  - `.optimalSizes`
    ///
    /// Example use:
    ///  ```
    ///  DynamicTypeSizesPreviewGroup(group: .smallestAndLargest) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(group: DynamicTypeSizesGroup, @ViewBuilder content: @escaping () -> Content) {
        self.init(sizes: group.sizes, content: content)
    }
    
    /// Initializes content with `DynamicTypeSize`s array.
    ///
    /// - Parameters:
    ///   - sizes: The array of `DynamicTypeSize`s used to generate previews.
    ///   - content: Content to build for every preview.
    ///
    /// Example use:
    ///  ```
    ///  DynamicTypeSizesPreviewGroup(sizes: [
    ///      .large,
    ///      .accessibility1
    ///  ]) {
    ///      SampleView()
    ///  }
    ///  ```
    ///
    public init(sizes: [DynamicTypeSize], @ViewBuilder content: @escaping () -> Content) {
        self.sizes = sizes
        self.content = content()
    }
    
    public var body: some View {
        Group {
            ForEach(sizes, id: \.self) { size in
                content.environment(\.dynamicTypeSize, size)
            }
        }
    }
}
