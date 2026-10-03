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
            url: "https://github.com/fixme-dev/fixme-ios/releases/download/0.1.2/PointerKit.xcframework.zip",
            checksum: "73b939f2a763c989b25ad1cfe15d26c4da346e1019a10f58c48529051c14f9ed"
        ),
    ]
)
