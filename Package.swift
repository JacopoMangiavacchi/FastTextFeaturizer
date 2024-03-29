// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FastTextFeaturizer",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "FastTextFeaturizer",
            targets: ["FastTextFeaturizer"]),
    ],
    dependencies: [
        .package(url: "https://__TOKEN__:x-oauth-basic@github.com/JacopoMangiavacchi/SwiftPipeline.git", from: "0.1.2"),
        .package(url: "https://github.com/JacopoMangiavacchi/SwiftFastText.git", from: "0.0.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "FastTextFeaturizer",
            dependencies: ["SwiftPipeline", "SwiftFastText"]),
        .testTarget(
            name: "FastTextFeaturizerTests",
            dependencies: ["FastTextFeaturizer", "SwiftPipeline", "SwiftFastText"]),
    ]
)
