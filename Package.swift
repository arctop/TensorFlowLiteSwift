// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteSwift"
            ]
        )
    ],
    targets: [
        .target(
            name: "TensorFlowLiteSwift",
            linkerSettings: [.linkedLibrary("c++")]
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/165360548.zip",
            checksum: "7399a952100e7c2c8e102a69a7461ae6390c3cf0dd3af47a43cc69b106b1d444"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/165360545.zip",
            checksum: "5036d5b064e09805b9cbb80d3ea9b51f5786699ef49ec8507be44f25f7f806fb"
        )
    ]
)
