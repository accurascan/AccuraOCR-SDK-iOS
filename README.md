# AccuraMICR – Swift Package

Swift Package Manager distribution of the AccuraMICR iOS SDK (binary xcframework).

- Minimum iOS: 15.0
- Real devices only (arm64). The iOS Simulator is **not** supported.

## Installation
Xcode → File → Add Package Dependencies → `https://github.com/accurascan/AccuraOCR-SDK-iOS` → version `1.0.0`
(make sure you pick the SPM branch/tag, not the CocoaPods tags), then add the `AccuraMICR` product to your app target.

```swift
import AccuraMICR
```

TensorFlow (`https://git.accurascan.com/mahdi/tensorflow` 0.4.2) is pulled in automatically.
