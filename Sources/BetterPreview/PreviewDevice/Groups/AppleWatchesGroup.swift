import Foundation

/// Apple Watches group, providing predefined groups to use with `previewDevices(_ group: DevicesGroup)` method.
///
public enum AppleWatchesGroup: DevicesGroup {
    /// Defines a group of all devices.
    ///
    /// Devices in group:
    ///  - `.Apple_Watch_38mm`
    ///  - `.Apple_Watch_40mm`
    ///  - `.Apple_Watch_41mm`
    ///  - `.Apple_Watch_42mm`
    ///  - `.Apple_Watch_44mm`
    ///  - `.Apple_Watch_45mm`
    ///
    case allSizes
    
    /// Defines a group of smallest and largest device.
    ///
    /// Devices in group:
    ///  - `.Apple_Watch_38mm`
    ///  - `.Apple_Watch_45mm`
    ///
    case smallestAndLargest
    
    /// Defines a group of devices of optimal sizes to testing.
    ///
    /// Devices in group:
    ///  - `.Apple_Watch_38mm`
    ///  - `.Apple_Watch_41mm`
    ///  - `.Apple_Watch_45mm`
    ///
    case optimalSizes
    
    /// Defines a group of newest devices line.
    ///
    /// Devices in group:
    ///  - `.Apple_Watch_41mm`
    ///  - `.Apple_Watch_45mm`
    ///
    case newestModelsSizes

    /// Returns an array of preview devices defined for the group.
    ///
    public var devices: [PreviewDevice] {
        switch self {
        case .allSizes:
            return [
                .Apple_Watch_38mm,
                .Apple_Watch_40mm,
                .Apple_Watch_41mm,
                .Apple_Watch_42mm,
                .Apple_Watch_44mm,
                .Apple_Watch_45mm
            ]
            
        case .smallestAndLargest:
            return [
                .Apple_Watch_38mm,
                .Apple_Watch_45mm
            ]
            
        case .optimalSizes:
            return [
                .Apple_Watch_38mm,
                .Apple_Watch_41mm,
                .Apple_Watch_45mm
            ]
            
        case .newestModelsSizes:
            return [
                .Apple_Watch_41mm,
                .Apple_Watch_45mm
            ]
        }
    }
}
