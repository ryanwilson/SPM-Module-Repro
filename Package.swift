// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "spm-module-repro",
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(
      name: "spm-module-repro",
      targets: ["spm-module-repro"]),
  ],
  dependencies: [],
  targets: [
    // Objective-C target ObjCFoo does not have any dependencies.
    .target(
      name: "ObjCFoo",
      dependencies: []),

    // Objective-C target ObjCBar has a dependency on ObjCFoo.
    .target(
      name: "ObjCBar",
      dependencies: ["ObjCFoo"]),

    // The only Swift target has a direct dependency on both.
    .target(
      name: "spm-module-repro",
      dependencies: ["ObjCFoo", "ObjCBar"]),

    // No test targets necessary.
  ]
)
