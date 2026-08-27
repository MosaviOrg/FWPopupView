// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "FWPopupView",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "FWPopupView",
            targets: ["FWPopupView"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/SnapKit/SnapKit.git",
            from: "5.7.0"
        )
    ],
    targets: [
        .target(
            name: "FWPopupView",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit")
            ],
            path: "FWPopupView",
            resources: [
                .copy("PrivacyInfo.xcprivacy"),
                .copy("Resources/FWPopupView.bundle")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
