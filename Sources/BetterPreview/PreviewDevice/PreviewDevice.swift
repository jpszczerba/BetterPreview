import SwiftUI

/// Defines multiple previewable devices to be used with `previewDevices` and other modifiers.
///
public enum PreviewDevice {
    // MARK: - Apple Watch

    /// Apple Watch - 38mm
    ///
    /// Models:
    ///  - Apple Watch Series 3 (38mm)
    ///
    /// - note: Uses `Apple Watch 3 - 38mm` simulator. It usually isn't available in Xcode by default.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case Apple_Watch_38mm
    
    /// Apple Watch - 40mm
    ///
    /// Models:
    ///  - Apple Watch Series 4 (40mm)
    ///  - Apple Watch Series 5 (40mm)
    ///  - Apple Watch Series SE (40mm)
    ///  - Apple Watch Series 6 (40mm)
    ///
    /// - note: Uses `Apple Watch 6 - 40mm` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case Apple_Watch_40mm
    
    /// Apple Watch - 41mm
    ///
    /// Models:
    ///  - Apple Watch Series 7 (41mm)
    ///
    /// - note: Uses `Apple Watch 7 - 41mm` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case Apple_Watch_41mm
    
    /// Apple Watch - 42mm
    ///
    /// Models:
    ///  - Apple Watch Series 3 (42mm)
    ///
    /// - note: Uses `Apple Watch 3 - 42mm` simulator. It usually isn't available in Xcode by default.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case Apple_Watch_42mm
    
    /// Apple Watch - 44mm
    ///
    /// Models:
    ///  - Apple Watch Series 4 (44mm)
    ///  - Apple Watch Series 5 (44mm)
    ///  - Apple Watch Series SE (44mm)
    ///  - Apple Watch Series 6 (44mm)
    ///
    /// - note: Uses `Apple Watch 6 - 44mm` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case Apple_Watch_44mm
    
    /// Apple Watch - 45mm
    ///
    /// Models:
    ///  - Apple Watch Series 7 (45mm)
    ///
    /// - note: Uses `Apple Watch 7 - 45mm` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case Apple_Watch_45mm
    
    
    // MARK: - iPad
    
    /// iPad 7.9"
    ///
    /// Models:
    ///  - iPad mini 4
    ///  - iPad mini (5th generation)
    ///
    /// - note: Uses `iPad mini (5th generation)` simulator. It usually isn't available in Xcode by default.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_7_9_inch
    
    /// iPad 8.3"
    ///
    /// Models:
    ///  - iPad mini (6th generation)
    ///
    /// - note: Uses `iPad mini (6th generation)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_8_3_inch
    
    /// iPad 9.7"
    ///
    /// Models:
    ///  - iPad (5th generation)
    ///  - iPad (6th generation)
    ///  - iPad Air 2
    ///  - iPad Pro 9.7" (1st generation)
    ///
    /// - note: Uses `iPad Pro (9.7-inch)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_9_7_inch
    
    /// iPad 10.2"
    ///
    /// Models:
    ///  - iPad (7th generation)
    ///  - iPad (8th generation)
    ///  - iPad (9th generation)
    ///
    /// - note: Uses `iPad (9th generation)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_10_2_inch
    
    /// iPad 10.5"
    ///
    /// Models:
    ///  - iPad Air (3rd generation)
    ///  - iPad Pro 10.5" (2nd generation)
    ///
    /// - note: Uses `iPad Air (3rd generation)` simulator. It usually isn't available in Xcode by default.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_10_5_inch
    
    /// iPad 10.9"
    ///
    /// Models:
    ///  - iPad Air (4th generation)
    ///  - iPad Air (5th generation)
    ///
    /// - note: Uses `iPad Air (5th generation)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_10_9_inch
    
    /// iPad 11"
    ///
    /// Models:
    ///  - iPad Pro 11" (1st generation)
    ///  - iPad Pro 11" (2nd generation)
    ///  - iPad Pro 11" (3rd generation)
    ///
    /// - note: Uses `iPad Pro (11-inch) (3rd generation)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_11_0_inch
    
    /// iPad 12.9"
    ///
    /// Models:
    ///  - iPad Pro 12.9" (1st generation)
    ///  - iPad Pro 12.9" (2nd generation)
    ///  - iPad Pro 12.9" (3rd generation)
    ///  - iPad Pro 12.9" (4th generation)
    ///  - iPad Pro 12.9" (5th generation)
    ///
    /// - note: Uses `iPad Pro (12.9-inch) (5th generation)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPad_12_9_inch
    
    
    // MARK: - iPhone

    /// iPhone 4"
    ///
    /// Models:
    ///  - iPhone SE (1st generation)
    ///  - iPod touch (7th generation)
    ///
    /// - note: Uses `iPod touch (7th generation)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_4_0_inch
    
    /// iPhone 4.7"
    ///
    /// Models:
    ///  - iPhone 6s
    ///  - iPhone 7
    ///  - iPhone 8
    ///  - iPhone SE (2nd generation)
    ///  - iPhone SE (3rd generation)
    ///
    /// - note: Uses `iPhone SE (3rd generation)` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_4_7_inch
    
    /// iPhone 5.4"
    ///
    /// Models:
    ///  - iPhone 12 mini
    ///  - iPhone 13 mini
    ///
    /// - note: Uses `iPhone 13 mini` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_5_4_inch
    
    /// iPhone 5.5"
    ///
    /// Models:
    ///  - iPhone 6s Plus
    ///  - iPhone 7 Plus
    ///  - iPhone 8 Plus
    ///
    /// - note: Uses `iPhone 8 Plus` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_5_5_inch
    
    /// iPhone 5.8"
    ///
    /// Models:
    ///  - iPhone X
    ///  - iPhone Xs
    ///  - iPhone 11 Pro
    ///
    /// - note: Uses `iPhone 11 Pro` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_5_8_inch
    
    /// iPhone 6.1" @2x
    ///
    /// Models:
    ///  - iPhone Xr
    ///  - iPhone 11
    ///
    /// - note: Uses `iPhone 11` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_6_1_inch_2x
    
    /// iPhone 6.1" @3x
    ///
    /// Models:
    ///  - iPhone 12
    ///  - iPhone 12 Pro
    ///  - iPhone 13
    ///  - iPhone 13 Pro
    ///
    /// - note: Uses `iPhone 13 Pro` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_6_1_inch_3x
    
    /// iPhone 6.5"
    ///
    /// Models:
    ///  - iPhone Xs Max
    ///  - iPhone 11 Pro Max
    ///
    /// - note: Uses `iPhone 11 Pro Max` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_6_5_inch
    
    /// iPhone 6.7"
    ///
    /// Models:
    ///  - iPhone 12 Pro Max
    ///  - iPhone 13 Pro Max
    ///
    /// - note: Uses `iPhone 13 Pro Max` simulator.
    ///         If a preview isn't displayed correctly, you need to add it to available simulators.
    ///         You can add it in menu: `Product -> Destination -> Add Additional Simulators...`.
    ///
    case iPhone_6_7_inch
}

// MARK: - PreviewableDevice

extension PreviewDevice: PreviewableDevice {
    public var displayName: String {
        associatedPreviewable.displayName
    }
    
    public var simulatorName: String {
        associatedPreviewable.simulatorName
    }
}

extension PreviewDevice {
    private var associatedPreviewable: PreviewableDevice {
        PreviewDevice.previewablesAssociations[self] ?? DefaultPreview()
    }
    
    private static let previewablesAssociations: [PreviewDevice: PreviewableDevice] = [
        .Apple_Watch_38mm: Apple_Watch_38mmPreview(),
        .Apple_Watch_40mm: Apple_Watch_40mmPreview(),
        .Apple_Watch_41mm: Apple_Watch_41mmPreview(),
        .Apple_Watch_42mm: Apple_Watch_42mmPreview(),
        .Apple_Watch_44mm: Apple_Watch_44mmPreview(),
        .Apple_Watch_45mm: Apple_Watch_45mmPreview(),
        
        .iPad_7_9_inch: iPad_7_9_inchPreview(),
        .iPad_8_3_inch: iPad_8_3_inchPreview(),
        .iPad_9_7_inch: iPad_9_7_inchPreview(),
        .iPad_10_2_inch: iPad_10_2_inchPreview(),
        .iPad_10_5_inch: iPad_10_5_inchPreview(),
        .iPad_10_9_inch: iPad_10_9_inchPreview(),
        .iPad_11_0_inch: iPad_11_0_inchPreview(),
        .iPad_12_9_inch: iPad_12_9_inchPreview(),
        
        .iPhone_4_0_inch: iPhone_4_0_inchPreview(),
        .iPhone_4_7_inch: iPhone_4_7_inchPreview(),
        .iPhone_5_4_inch: iPhone_5_4_inchPreview(),
        .iPhone_5_5_inch: iPhone_5_5_inchPreview(),
        .iPhone_5_8_inch: iPhone_5_8_inchPreview(),
        .iPhone_6_1_inch_2x: iPhone_6_1_inch_2xPreview(),
        .iPhone_6_1_inch_3x: iPhone_6_1_inch_3xPreview(),
        .iPhone_6_5_inch: iPhone_6_5_inchPreview(),
        .iPhone_6_7_inch: iPhone_6_7_inchPreview()
    ]
}
