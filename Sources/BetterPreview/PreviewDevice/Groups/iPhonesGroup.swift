import Foundation

/// iPhones group, providing predefined groups to use with `previewDevices(_ group: DevicesGroup)` method.
///
public enum iPhonesGroup: DevicesGroup {
    /// Defines a group of all devices.
    ///
    /// Devices in group:
    ///  - `.iPhone_4_0_inch`
    ///  - `.iPhone_4_7_inch`
    ///  - `.iPhone_5_5_inch`
    ///  - `.iPhone_5_4_inch`
    ///  - `.iPhone_5_8_inch`
    ///  - `.iPhone_6_1_inch_2x`
    ///  - `.iPhone_6_1_inch_3x`
    ///  - `.iPhone_6_5_inch`
    ///  - `.iPhone_6_7_inch`
    ///
    case allSizes
    
    /// Defines a group of smallest and largest device.
    ///
    /// Devices in group:
    ///  - `.iPhone_4_0_inch`
    ///  - `.iPhone_6_7_inch`
    ///
    case smallestAndLargest
    
    /// Defines a group of devices of optimal sizes to testing.
    ///
    /// Devices in group:
    ///  - `.iPhone_4_0_inch`
    ///  - `.iPhone_4_7_inch`
    ///  - `.iPhone_5_4_inch`
    ///  - `.iPhone_6_1_inch_3x`
    ///  - `.iPhone_6_7_inch`
    ///
    case optimalSizes
    
    /// Defines a group of newest devices line.
    ///
    /// Devices in group:
    ///  - `.iPhone_5_4_inch`
    ///  - `.iPhone_6_1_inch_3x`
    ///  - `.iPhone_6_7_inch`
    ///
    case newestModelsSizes
    
    public var devices: [PreviewDevice] {
        switch self {
        case .allSizes:
            return [
                .iPhone_4_0_inch,
                .iPhone_4_7_inch,
                .iPhone_5_5_inch,
                .iPhone_5_4_inch,
                .iPhone_5_8_inch,
                .iPhone_6_1_inch_2x,
                .iPhone_6_1_inch_3x,
                .iPhone_6_5_inch,
                .iPhone_6_7_inch
            ]
            
        case .smallestAndLargest:
            return [
                .iPhone_4_0_inch,
                .iPhone_6_7_inch
            ]
            
        case .optimalSizes:
            return [
                .iPhone_4_0_inch,
                .iPhone_4_7_inch,
                .iPhone_5_4_inch,
                .iPhone_6_1_inch_3x,
                .iPhone_6_7_inch
            ]
            
        case .newestModelsSizes:
            return [
                .iPhone_5_4_inch,
                .iPhone_6_1_inch_3x,
                .iPhone_6_7_inch
            ]
        }
    }
}
