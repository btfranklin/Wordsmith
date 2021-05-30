// swift-tools-version:5.4
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
            type: .static,
            targets: ["Wordsmith"]),
    ],
    dependencies: [
        .package(name: "Dunesailer Utilities",
                 url: "https://github.com/dunesailer/Utilities.git",
                 .branch("master")),
    ],
    targets: [
        .target(
            name: "Wordsmith",
            dependencies: [
                .product(name: "DunesailerUtilities",
                         package: "Dunesailer Utilities")
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
