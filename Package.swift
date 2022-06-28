// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Wordsmith",
    platforms: [
        .macOS(.v12), .iOS(.v15), .tvOS(.v16), .watchOS(.v9)
    ],
    products: [
        .library(
            name: "Wordsmith",
//            type: .static,
            targets: ["Wordsmith"]),
    ],
    dependencies: [
        .package(url: "https://github.com/btfranklin/ControlledChaos",
                    .upToNextMajor(from: "1.3.0")),
        .package(url: "https://github.com/btfranklin/StringBooster",
                    .upToNextMajor(from: "1.1.1")),
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
                .process("Assets/Adjectives.json"),
                .process("Assets/Adverbs.json"),
                .process("Assets/Nouns.json"),
                .process("Assets/Verbs.json"),
                .process("Assets/Chemical Compound Names.json"),
                .process("Assets/Common Female Given Names.json"),
                .process("Assets/Common Male Given Names.json"),
                .process("Assets/Common Surnames.json"),
            ]),
        .testTarget(
            name: "WordsmithTests",
            dependencies: ["Wordsmith"]),
    ]
)
