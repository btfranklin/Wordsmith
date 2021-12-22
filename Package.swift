// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Wordsmith",
    platforms: [
        .macOS(.v11), .iOS(.v14), .tvOS(.v14), .watchOS(.v7)
    ],
    products: [
        .library(
            name: "Wordsmith",
//            type: .static,
            targets: ["Wordsmith"]),
    ],
    dependencies: [
        .package(url: "https://github.com/btfranklin/ControlledChaos",
                    .upToNextMajor(from: "1.1.1")),
        .package(url: "https://github.com/btfranklin/StringBooster",
                    .upToNextMajor(from: "1.0.1")),
    ],
    targets: [
        .target(
            name: "Wordsmith",
            dependencies: [
                .product(name: "ControlledChaos",
                         package: "ControlledChaos"),
                .product(name: "StringBooster",
                         package: "StringBooster"),
            ],
            resources: [
                .process("Base Word Types/Adjectives.json"),
                .process("Base Word Types/Adverbs.json"),
                .process("Base Word Types/Nouns.json"),
                .process("Base Word Types/Verbs.json"),
                .process("Person Names/Common Female Given Names.json"),
                .process("Person Names/Common Male Given Names.json"),
                .process("Person Names/Common Surnames.json"),
            ]),
        .testTarget(
            name: "WordsmithTests",
            dependencies: ["Wordsmith"]),
    ]
)
