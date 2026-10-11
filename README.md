# DesignSystem

A design system for my projects: a shared set of reusable UI components and utilities, built with UIKit and [SnapKit](https://github.com/SnapKit/SnapKit).

## Requirements

- iOS 16+
- Swift 6.4+

## Installation

### Swift Package Manager

[Swift Package Manager](https://www.swift.org/documentation/package-manager/) is a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

To integrate DesignSystem into your Xcode project, choose **File → Add Package Dependencies…** and enter the repository URL:

```
https://github.com/IvanPuzanov/DesignSystem.git
```

To integrate DesignSystem into a Swift package, add it to the `dependencies` value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/IvanPuzanov/DesignSystem.git", .upToNextMajor(from: "1.0.0"))
]
```

Then add `DesignSystem` to the dependencies of your target:

```swift
.target(
    name: "MyTarget",
    dependencies: [
        .product(name: "DesignSystem", package: "DesignSystem"),
    ]
)
```

## Usage

```swift
import DesignSystem
```
