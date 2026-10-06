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
            url: "https://github.com/fixme-dev/fixme-ios/releases/download/0.1.7/PointerKit.xcframework.zip",
            checksum: "84214841b412bbf31782ff91b6ca1791feaea3a749007ee4f3a56e896973f899"
        ),
    ]
)
