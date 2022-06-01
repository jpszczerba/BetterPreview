import SwiftUI

/// Defines groups of `InterfaceOrientation`s to easier preview several orientations.
///
@available(watchOS, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
public enum InterfaceOrientationsGroup {
    /// Uses all possible orientations.
    ///
    /// Orientations used:
    ///  - `.portrait`
    ///  - `.portraitUpsideDown`
    ///  - `.landscapeLeft`
    ///  - `.landscapeRight`
    ///
    case all
    
    /// Uses portrait and left landscape orientations.
    ///
    /// Orientations used:
    ///  - `.portrait`
    ///  - `.landscapeLeft`
    ///
    case portraitAndLandscape
    
    /// Uses portrait and both landscapes orientations.
    ///
    /// Orientations used:
    ///  - `.portrait`
    ///  - `.landscapeLeft`
    ///  - `.landscapeRight`
    ///  
    case portraitAndBothLandscapes
    
    var orientations: [InterfaceOrientation] {
        switch self {
        case .all:
            return InterfaceOrientation.allCases
        case .portraitAndLandscape:
            return [.portrait, .landscapeLeft]
        case .portraitAndBothLandscapes:
            return [.portrait, .landscapeLeft, .landscapeRight]
        }
    }
}
