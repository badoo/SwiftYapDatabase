// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift-YapDatabase",
    products: [
        .library(
            name: "YapDatabase",
            targets: ["YapDatabase"]
        ),
        .library(
            name: "SwiftYapDatabase",
            type: .dynamic,
            targets: ["SwiftYapDatabase"]
        )
    ],
    targets: [
        .target(
            name: "YapDatabase",
            cSettings: [
                .headerSearchPath("privateInclude")
            ]
        ),
        .target(
            name: "SwiftYapDatabase",
            dependencies: ["YapDatabase"]
        ),
        .testTarget(
            name: "SwiftYapDatabaseTests",
            dependencies: ["SwiftYapDatabase"]),
    ]
)
