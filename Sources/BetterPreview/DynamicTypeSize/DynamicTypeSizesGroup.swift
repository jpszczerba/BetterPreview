import SwiftUI

/// Defines groups of `DynamicTypeSize`s to easier preview several dynamic type sizes.
///
public enum DynamicTypeSizesGroup {
    /// Uses all defined `DynamicTypeSize`s.
    ///
    /// Sizes used:
    ///  - `.xSmall`
    ///  - `.small`
    ///  - `.medium`
    ///  - `.large`
    ///  - `.xLarge`
    ///  - `.xxLarge`
    ///  - `.xxxLarge`
    ///  - `.accessibility1`
    ///  - `.accessibility2`
    ///  - `.accessibility3`
    ///  - `.accessibility4`
    ///  - `.accessibility5`
    ///
    case all
    
    /// Uses the smallest and the largest `DynamicTypeSize`.
    ///
    /// Sizes used:
    ///  - `.xSmall`
    ///  - `.accessibility5`
    ///
    case smallestAndLargest
    
    /// Uses optimal `DynamicTypeSize`s.
    ///
    /// Sizes used:
    ///  - `.xSmall`
    ///  - `.large`
    ///  - `.xxxLarge`
    ///  - `.accessibility2`
    ///  - `.accessibility5`
    ///
    case optimalSizes
    
    var sizes: [DynamicTypeSize] {
        switch self {
        case .all:
            return DynamicTypeSize.allCases
        case .smallestAndLargest:
            return [.xSmall, .accessibility5]
        case .optimalSizes:
            return [.xSmall, .large, .xxxLarge, .accessibility2, .accessibility5]
        }
    }
}
