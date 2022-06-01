import Foundation

/// iPads group, providing predefined groups to use with `previewDevices(_ group: DevicesGroup)` method.
///
public enum iPadsGroup: DevicesGroup {
    /// Defines a group of all devices.
    ///
    /// Devices in group:
    ///  - `.iPad_7_9_inch`
    ///  - `.iPad_8_3_inch`
    ///  - `.iPad_9_7_inch`
    ///  - `.iPad_10_2_inch`
    ///  - `.iPad_10_5_inch`
    ///  - `.iPad_10_9_inch`
    ///  - `.iPad_11_0_inch`
    ///  - `.iPad_12_9_inch`
    ///
    case allSizes
    
    /// Defines a group of smallest and largest device.
    ///
    /// Devices in group:
    ///  - `.iPad_7_9_inch`
    ///  - `.iPad_12_9_inch`
    ///
    case smallestAndLargest
    
    /// Defines a group of devices of optimal sizes to testing.
    ///
    /// Devices in group:
    ///  - `.iPad_7_9_inch`
    ///  - `.iPad_10_2_inch`
    ///  - `.iPad_11_0_inch`
    ///  - `.iPad_12_9_inch`
    ///
    case optimalSizes
    
    /// Defines a group of newest devices line.
    ///
    /// Devices in group:
    ///  - `.iPad_8_3_inch`
    ///  - `.iPad_10_2_inch`
    ///  - `.iPad_10_9_inch`
    ///  - `.iPad_11_0_inch`
    ///  - `.iPad_12_9_inch`
    ///
    case newestModelsSizes

    public var devices: [PreviewDevice] {
        switch self {
        case .allSizes:
            return [
                .iPad_7_9_inch,
                .iPad_8_3_inch,
                .iPad_9_7_inch,
                .iPad_10_2_inch,
                .iPad_10_5_inch,
                .iPad_10_9_inch,
                .iPad_11_0_inch,
                .iPad_12_9_inch
            ]
            
        case .smallestAndLargest:
            return [
                .iPad_7_9_inch,
                .iPad_12_9_inch
            ]
            
        case .optimalSizes:
            return [
                .iPad_7_9_inch,
                .iPad_10_2_inch,
                .iPad_11_0_inch,
                .iPad_12_9_inch
            ]
            
        case .newestModelsSizes:
            return [
                .iPad_8_3_inch,
                .iPad_10_2_inch,
                .iPad_10_9_inch,
                .iPad_11_0_inch,
                .iPad_12_9_inch
            ]
        }
    }
}
