import SwiftUI

#if os(iOS)
/// Provides an easy way to preview a UIViewController
///
public struct UIViewControllerPreview {
    private let viewController: UIViewControllerType

    /// Initializes with a given UIViewController
    ///
    /// - Parameters:
    ///   - viewController: The UIViewController to display in a preview.
    ///
    /// Example use:
    ///  ```
    ///  UIViewControllerPreview(UIImagePickerController())
    ///  ```
    ///
    public init(_ viewController: UIViewControllerType) {
        self.viewController = viewController
    }
    
    /// Initializes with the given closure, building a UIViewController
    ///
    /// - Parameters:
    ///   - content: A closure to building and returning UIViewController.
    ///
    /// Example use:
    ///  ```
    ///  UIViewControllerPreview {
    ///      UIImagePickerController()
    ///  }
    ///  ```
    ///
    public init(_ content: @escaping () -> UIViewControllerType) {
        viewController = content()
    }
}

extension UIViewControllerPreview: UIViewControllerRepresentable {
    public typealias UIViewControllerType = UIViewController

    public func makeUIViewController(context: Context) -> UIViewControllerType {
        viewController
    }
    
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
#endif
