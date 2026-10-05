// swift-tools-version: 5.9
// FIXME's iOS helper, as a compiled framework. Added to your app's Debug builds only; see README.md.
import PackageDescription

let package = Package(
    name: "FIXME",
    platforms: [.iOS(.v16)],
    products: [.library(name: "PointerKit", targets: ["PointerKit"])],
    targets: [
        .binaryTarget(
            name: "PointerKit",
            url: "https://github.com/fixme-dev/fixme-ios/releases/download/0.1.6/PointerKit.xcframework.zip",
            checksum: "a223291b9268ea2f4b78f0c01b360b883f364f74f3c6c1c034eb511e2b2c82c8"
        ),
    ]
)
