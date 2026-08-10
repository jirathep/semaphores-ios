// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Semaphores",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "Semaphores",
            targets: ["Semaphores"]),
    ],
    dependencies: [
      .package(url: "https://github.com/firebase/firebase-ios-sdk.git", "10.0.0" ..< "13.0.0"),
    ],
    targets: [
        .target(
            name: "Semaphores",
        dependencies: [
          .product(name: "FirebaseDatabase", package: "firebase-ios-sdk"),
        ]),
    ]
)
