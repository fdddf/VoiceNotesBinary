// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "sherpa-onnx-spm",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "sherpa-onnx-spm",
            targets: ["sherpa-onnx-spm"]
        ),
    ],
    targets: [
        .target(
            name: "sherpa-onnx-spm",
            dependencies: ["onnxruntime", "sherpa_onnx"],
            path: "Sources/sherpa-onnx-spm"
        ),
        .binaryTarget(
            name: "onnxruntime",
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.12.23/onnxruntime.xcframework.zip",
            checksum: "09e7505bd0e4376014fa39838c99f9b38471e992f1edb7886f74e0ba902254bb"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.12.23/sherpa-onnx.xcframework.zip",
            checksum: "18833536d5eac54806e1c808934a89fc9bb59301e1d5c717daa50580ea5da650"
        ),
    ]
)
