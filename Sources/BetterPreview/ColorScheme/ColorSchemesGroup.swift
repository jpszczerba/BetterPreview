import SwiftUI

/// Defines groups of `ColorScheme`s to easier preview several color schemes.
///
@available(watchOS, unavailable)
public enum ColorSchemesGroup {
    /// Uses both color schemes.
    ///
    /// Used color schemes:
    ///  - `.light`
    ///  - `.dark`
    ///
    case both
    
    var schemes: [ColorScheme] {
        switch self {
        case .both:
            return [.light, .dark]
        }
    }
}
