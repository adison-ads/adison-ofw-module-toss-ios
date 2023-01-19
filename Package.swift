// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TossOfwModule",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TossOfwModule",
            targets: ["TossOfwModule", "TossOfwModuleTarget"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "AdisonOfferwallSDK",
            url: "https://github.com/adison-ads/adison-offerwall-ios-sdk",
            .branch("main")
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TossOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-toss-ios/releases/download/1.2.14/TossOfwModule.zip",
            checksum: "740f8fd1abb77273dfa482a3d6580a0a88cbe5d277e00cb17c674da68c794a8a"
        ),
        .target(
            name: "TossOfwModuleTarget",
            dependencies: ["AdisonOfferwallSDK"],
            path: "Sources"
        ),
    ]
)
