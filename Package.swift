// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Wordsmith",
    platforms: [
        .macOS(.v10_15), .iOS(.v13),
    ],
    products: [
        .library(
            name: "Wordsmith",
            targets: ["Wordsmith"]),
    ],
    dependencies: [
        .package(name: "Dunesailer Utilities", url: "https://github.com/dunesailer/Utilities.git", from: "2.0.2"),
    ],
    targets: [
        .target(
            name: "Wordsmith",
            dependencies: [.product(name: "DunesailerUtilities", package: "Dunesailer Utilities")]),
        .testTarget(
            name: "WordsmithTests",
            dependencies: ["Wordsmith"]),
    ]
)
