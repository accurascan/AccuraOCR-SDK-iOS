# AccuraOCR – Swift Package

Swift Package Manager distribution of the AccuraOCR iOS SDK (binary xcframework).

- Minimum iOS: 15.0
- Real devices only (arm64). The iOS Simulator is **not** supported.

## Installation
Xcode → File → Add Package Dependencies → `https://accurascan/AccuraOCR-SDK-iOS` → version `1.0.0`, then add the `AccuraOCR` product to your app target.

Or in `Package.swift`:

```swift
.package(url: "https://github.com/accurascan/AccuraOCR-SDK-iOS", from: "1.0.0")
```

```swift
import AccuraOCR
```


