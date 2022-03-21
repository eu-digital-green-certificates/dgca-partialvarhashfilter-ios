// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DGCPartialVarHashFilter",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DGCPartialVarHashFilter",
            targets: ["DGCPartialVarHashFilter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/leif-ibsen/BigInt", from: "1.2.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DGCPartialVarHashFilter",
            dependencies: ["BigInt"]),
        .testTarget(
            name: "DGCPartialVarHashFilterTests",
            dependencies: ["DGCPartialVarHashFilter"]),
    ]
)
