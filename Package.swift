// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AKFaceCaptureSwift",
    products: [
        .library(
            name: "AKFaceCaptureSwift",
            targets: ["AKFaceCaptureSwiftWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Autentikar/faceTec-dependency.git", from: "9.6.47"),
    ],
    targets: [
        .target(
            name: "AKFaceCaptureSwiftWrapper",
            dependencies: [
                .product(name: "FaceTecSDK", package: "faceTec-dependency"),
                .target(name: "AKFaceCaptureSwift"),
            ],
            path: "AKFaceCaptureSwiftWrapper"
        ),
        .binaryTarget(
            name: "AKFaceCaptureSwift",
            path: "AKFaceCaptureSwift.xcframework")
    ]
)
