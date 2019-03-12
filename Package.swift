// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EchoBot",
    dependencies: [
        .package(url: "https://github.com/givip/Telegrammer.git", from: "0.5.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "3.3.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "Telegrammer"]),
        .target(name: "Run", dependencies: ["App"])
    ]
)
 
