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
            url: "https://github.com/fixme-dev/fixme-ios/releases/download/0.1.4/PointerKit.xcframework.zip",
            checksum: "29d5609310fd19f50059dfcc1542ac775b7aa244bf9347654677fc9a7d54e516"
        ),
    ]
)
