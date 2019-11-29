// swift-tools-version:5.1
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
        .package(url: "https://github.com/dunesailer/Utilities.git", from: "0.6.0"),
    ],
    targets: [
        .target(
            name: "Wordsmith",
            dependencies: ["DunesailerUtilities"]),
        .testTarget(
            name: "WordsmithTests",
            dependencies: ["Wordsmith"]),
    ]
)
