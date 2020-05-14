// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "Safer",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "Safer",
            targets: ["Safer"])
    ],
    targets: [
        .target(
            name: "Safer",
            path: "Sources"),
        .testTarget(
            name: "Tests",
            dependencies: ["Safer"],
            path: "Tests")
    ]
)
