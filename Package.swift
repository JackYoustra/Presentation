// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Presentation",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "Presentation",
            targets: ["Presentation"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/youstra/Pages",
            .branch("patch-1")
        ),
    ],
    targets: [
        .target(
            name: "Presentation",
            dependencies: ["Pages"],
            path: "Source"
        )
    ]
)
