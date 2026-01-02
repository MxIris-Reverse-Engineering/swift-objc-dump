// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ObjCDump",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6),
        .tvOS(.v13),
        .visionOS(.v1),
        .macCatalyst(.v13),
    ],
    products: [
        .library(
            name: "ObjCDump",
            targets: ["ObjCDump"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Mx-Iris/FrameworkToolbox", branch: "main"),
    ],
    targets: [
        .target(
            name: "ObjCDump",
            dependencies: [
                "ObjCTypeDecodeKit",
            ]
        ),
        .target(
            name: "ObjCTypeDecodeKit",
            dependencies: [
                .product(name: "FoundationToolbox", package: "FrameworkToolbox"),
            ]
        ),
        .testTarget(
            name: "ObjCDumpTests",
            dependencies: ["ObjCDump"]
        ),
        .testTarget(
            name: "ObjCTypeDecodeKitTests",
            dependencies: ["ObjCTypeDecodeKit"]
        ),
    ]
)
