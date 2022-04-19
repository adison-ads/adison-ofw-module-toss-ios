// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TossOfwModule",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TossOfwModule",
            targets: ["TossOfwModule"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TossOfwModule",
            url: "https://github.com/adison-ads/adison-ofw-module-toss-ios/releases/download/v1.2.8/TossOfwModule.zip",
            checksum: "ab44d4edaa537151202ea902590d34b781dc5c8e11dcd25a7205e9231f1b5b90")
    ]
)
