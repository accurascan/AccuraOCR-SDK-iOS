// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AccuraMICR",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Device-only (arm64) binary framework. Simulator is not supported.
        .library(name: "AccuraMICR", targets: ["AccuraMICRSPM"])
    ],
    dependencies: [
        .package(url: "https://git.accurascan.com/mahdi/tensorflow", exact: "0.4.2")
    ],
    targets: [
        .binaryTarget(
            name: "AccuraMICR",
            url: "https://github.com/accurascan/AccuraOCR-SDK-iOS/releases/download/micr-spm-1.0.0/AccuraMICR.xcframework.zip",
            checksum: "7f791f8a752130fc9c1cece6d8fcb87639e049932c12fd4e2ed15890a267d6a4"
        ),
        .target(
            name: "AccuraMICRSPM",
            dependencies: [
                "AccuraMICR",
                .product(name: "TensorFlowLiteTaskVision", package: "Tensorflow")
            ],
            path: "Sources/AccuraMICRSPM"
        )
    ]
)
