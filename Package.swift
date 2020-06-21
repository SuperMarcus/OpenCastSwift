// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "OpenCastSwift",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "OpenCastSwift",
            targets: ["OpenCastSwift"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            name: "SwiftProtobuf",
            url: "https://github.com/apple/swift-protobuf",
            from: "1.9.0"
        ),
        .package(
            url: "https://github.com/SwiftyJSON/SwiftyJSON",
            from: "5.0.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "OpenCastSwift",
            dependencies: [
                "SwiftProtobuf",
                "SwiftyJSON"
            ],
            path: "Source"
        )
    ]
)
