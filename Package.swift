// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "PostgreSQL",
    dependencies: [
        .package(
            url: "https://github.com/tris-code/aio.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-code/test.git",
            .branch("master"))
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
