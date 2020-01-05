// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "PostgreSQL",
    dependencies: [
        .package(path: "../AIO"),
        .package(path: "../Test")
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
