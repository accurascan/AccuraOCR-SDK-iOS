# AccuraOCR (NFC) – Swift Package Manager

Device-only (arm64), iOS 15+. Simulator is not supported.

## Install
Xcode → File → Add Package Dependencies → `https://git.accurascan.com/mahdi/accuraocr-sdk-ios` (branch `nfc`), product **AccuraOCR**.

```swift
.package(url: "https://git.accurascan.com/mahdi/accuraocr-sdk-ios", branch: "nfc")
```

TensorFlow is resolved from `https://git.accurascan.com/mahdi/tensorflow` (exact `0.4.2`).

## Releasing
The AccuraOCR binary is downloaded from
`https://github.com/accurascan/AccuraOCR-SDK-iOS/releases/download/1.0.2-nfc/AccuraOCR_NFC.xcframework.zip`.
Upload that zip to a release with tag `1.0.2-nfc` before using the package.
Checksum: `swift package compute-checksum AccuraOCR_NFC.xcframework.zip`.
