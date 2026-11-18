# AccuraOCR – Swift Package

Swift Package Manager distribution of the AccuraOCR iOS SDK (binary xcframework).

- Minimum iOS: 15.0
- Real devices only (arm64). The iOS Simulator is **not** supported.

## Installation
Xcode → File → Add Package Dependencies → `https://mahdisomjee123/accurakycsdk_spm` → version `0.0.1`, then add the `AccuraOCR` product to your app target.

Or in `Package.swift`:

```swift
.package(url: "https://github.com/mahdisomjee123/accurakycsdk_spm", from: "0.0.1")
```

```swift
import AccuraOCR
```

Dependencies pulled in automatically: TensorFlowLiteTaskVision (saeed-mohammad/Tensorflow 1.0.7), SVProgressHUD and the Google support libraries.
