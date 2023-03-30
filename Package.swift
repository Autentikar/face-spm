// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AKFaceCaptureSwift",
    products: [
        .library(
            name: "AKFaceCaptureSwift",
            targets: ["AKFaceCaptureSwift"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
                    name: "AKFaceCaptureSwift",
                    path: "AKFaceCaptureSwift.xcframework"
                )
    ]
)
