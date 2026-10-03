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
            url: "https://github.com/fixme-dev/fixme-ios/releases/download/0.1.1/PointerKit.xcframework.zip",
            checksum: "26374b58d1d32314a022dd4c990ab27be262ea3f8423320068c3218e6cd31a4f"
        ),
    ]
)
