// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "PostgreSQL",
    dependencies: [
        .package(
            url: "https://github.com/tris-foundation/aio.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-foundation/test.git",
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
