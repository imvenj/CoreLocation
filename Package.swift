// swift-tools-version:5.1

import PackageDescription

let pkg = Package(name: "PMKCoreLocation")
pkg.products = [
    .library(name: "PMKCoreLocation", targets: ["PMKCoreLocation"]),
]
pkg.dependencies = [
    .package(url: "https://github.com/mxcl/PromiseKit.git", .upToNextMajor(from: "6.0.0"))
]
pkg.swiftLanguageVersions = [.v4, .v4_2, .v5]

let target: Target = .target(name: "PMKCoreLocation")
target.path = "Sources/Swift"
target.exclude = ["Tests"]
target.dependencies = [
    "PromiseKit",
]

pkg.targets = [target]
