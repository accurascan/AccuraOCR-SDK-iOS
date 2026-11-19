// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AccuraOCR",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Device-only (arm64) binary framework. Simulator is not supported.
        .library(name: "AccuraOCR", targets: ["AccuraOCRSPM"])
    ],
    dependencies: [
        .package(url: "https://git.accurascan.com/mahdi/tensorflow", exact: "0.4.2")
    ],
    targets: [
        .binaryTarget(
            name: "AccuraOCR",
            url: "https://github.com/accurascan/AccuraOCR-SDK-iOS/releases/download/nfc-spm-1.0.0/AccuraOCR_NFC.xcframework.zip",
            checksum: "3cab829b68a315eca762340225f44115109ae8de8714fd6957715cc7c9a35b41"
        ),
        // Dynamic frameworks that AccuraOCR.framework loads at launch via @rpath.
        // Built from CocoaPods: PromisesObjC 2.4.1, GoogleDataTransport 9.4.1, GoogleUtilities 7.13.3,
        // nanopb 2.30910.0, GTMSessionFetcher 1.7.2, GoogleToolboxForMac 2.3.2, Protobuf 3.29.6, OpenSSL 3.3.3001.
        .binaryTarget(name: "FBLPromises", path: "Frameworks/FBLPromises.xcframework"),
        .binaryTarget(name: "GoogleDataTransport", path: "Frameworks/GoogleDataTransport.xcframework"),
        .binaryTarget(name: "GoogleUtilities", path: "Frameworks/GoogleUtilities.xcframework"),
        .binaryTarget(name: "nanopb", path: "Frameworks/nanopb.xcframework"),
        .binaryTarget(name: "GTMSessionFetcher", path: "Frameworks/GTMSessionFetcher.xcframework"),
        .binaryTarget(name: "GoogleToolboxForMac", path: "Frameworks/GoogleToolboxForMac.xcframework"),
        .binaryTarget(name: "Protobuf", path: "Frameworks/Protobuf.xcframework"),
        .binaryTarget(name: "OpenSSL", path: "Frameworks/OpenSSL.xcframework"),
        .target(
            name: "AccuraOCRSPM",
            dependencies: [
                "AccuraOCR",
                .product(name: "TensorFlowLiteTaskVision", package: "Tensorflow"),
                "FBLPromises",
                "GoogleDataTransport",
                "GoogleUtilities",
                "nanopb",
                "GTMSessionFetcher",
                "GoogleToolboxForMac",
                "Protobuf",
                "OpenSSL"
            ],
            path: "Sources/AccuraOCRSPM"
        )
    ]
)
