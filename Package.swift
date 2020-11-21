// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "OpenCastSwift",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v11),
        .watchOS(.v4)
    ],
    products: [
        .library(
            name: "OpenCastSwift",
            targets: ["OpenCastSwift"]
        ),
    ],
    dependencies: [
        .package(
            name: "SwiftProtobuf",
            url: "https://github.com/apple/swift-protobuf",
            from: "1.13.0"
        ),
        .package(
            url: "https://github.com/SwiftyJSON/SwiftyJSON",
            from: "5.0.0"
        )
    ],
    targets: [
        .target(
            name: "OpenCastSwift",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "SwiftProtobuf"),
                .product(name: "SwiftProtobufPluginLibrary", package: "SwiftProtobuf"),
                "SwiftyJSON"
            ],
            path: "Source"
        )
    ]
)
