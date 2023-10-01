// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "LaTeXSwift",
  platforms: [
    .iOS(.v15),
    .macOS(.v13)
  ],
  products: [
    .library(
      name: "LaTeXSwift",
      targets: ["LaTeXSwift"]),
  ],
  dependencies: [
     .package(url: "https://github.com/colinc86/MathJaxSwift", from: "3.4.0"),
     .package(url: "https://github.com/exyte/SVGView", from: "1.0.4"),
     .package(url: "https://github.com/Kitura/swift-html-entities", from: "4.0.1")
  ],
  targets: [
    .target(
      name: "LaTeXSwift",
      dependencies: [
        "MathJaxSwift",
        "SVGView",
        .product(name: "HTMLEntities", package: "swift-html-entities")
      ]),
    .testTarget(
      name: "LaTeXSwiftUITests",
      dependencies: ["LaTeXSwift"]),
  ]
)
