import SwiftUI

#if os(iOS)
/// Provides an easy way to preview a UIView
///
public struct UIViewPreview {
    private let view: UIViewType
    
    /// Initializes with a given UIView
    ///
    /// - Parameters:
    ///   - viewController: The UIView to display in a preview.
    ///
    /// Example use:
    ///  ```
    ///  UIViewPreview(MKMapView())
    ///  ```
    ///
    public init(_ view: UIViewType) {
        self.view = view
    }
    
    /// Initializes with the given closure, building a UIView
    ///
    /// - Parameters:
    ///   - content: A closure to building and returning UIView.
    ///
    /// Example use:
    ///  ```
    ///  UIViewPreview {
    ///      MKMapView()
    ///  }
    ///  ```
    ///
    public init(_ content: @escaping () -> UIViewType) {
        view = content()
    }
}

extension UIViewPreview: UIViewRepresentable {
    public typealias UIViewType = UIView

    public func makeUIView(context: Context) -> UIViewType {
        view
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {}
}
#endif
