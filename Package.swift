// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "ObjectCapture",
    platforms: [
//        .iOS("17.2"),
//        .visionOS("1.0"),
        .iOS(.v17),
        .visionOS(.v1),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ObjectCapture",
            targets: ["ObjectCapture"]),
        .iOSApplication(
            name: "ObjectCaptureExampleApp",
            targets: ["AppModule"],
            teamIdentifier: "3QPV894C33",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .binoculars),
            accentColor: .presetColor(.brown),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            appCategory: .developerTools
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ObjectCapture",
            path: "Sources",
            resources: [
            ],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals")
            ]
        ),
        .executableTarget(
            name: "AppModule",
            dependencies: ["ObjectCapture"],
            path: "Development",
            resources: [
//                .process("Resources")
            ],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals")
            ]
        ),
        .testTarget(
            name: "ObjectCaptureTests",
            dependencies: ["ObjectCapture"],
            path: "Tests"
            ),
    ]
)
