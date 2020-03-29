// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "PostgreSQL",
    dependencies: [
        .package(path: "../aio"),
        .package(path: "../test")
    ],
    targets: [
        .target(
            name: "PostgreSQL",
            dependencies: ["Network"]),
        .testTarget(
            name: "PostgreSQLTests",
            dependencies: ["Test", "PostgreSQL"])
    ]
)
