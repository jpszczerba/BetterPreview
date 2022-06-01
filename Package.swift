// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "BetterPreview",
    platforms: [
        .iOS(.v15),
        .watchOS(.v8),
        .macOS(.v12),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "BetterPreview",
            targets: ["BetterPreview"]
        )
    ],
    targets: [
        .target(
            name: "BetterPreview"
        )
    ]
)
