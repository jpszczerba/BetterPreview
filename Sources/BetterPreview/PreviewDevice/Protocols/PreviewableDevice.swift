import SwiftUI
import Foundation

public protocol NamedDevice {
    var displayName: String { get }
}

public protocol SimulatableDevice {
    var simulatorName: String { get }
}

public protocol PreviewableDevice: NamedDevice, SimulatableDevice {}
