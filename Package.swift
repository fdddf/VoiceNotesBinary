// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "VoiceNotesBinary",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "VoiceNotesBinary",
            targets: ["OnnxRuntime", "SherpaOnnx"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "OnnxRuntime",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v20251128/onnxruntime.xcframework.zip",
            checksum: "ef1fc9580f96ffc3a6a8d8c1763d22efd7ac84628747c4a65ecbfe0813489656"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v20251128/sherpa-onnx.xcframework.zip",
            checksum: "7eac1bf974162cc674d3c9d5d5be6619cd3ba9e4930d82e0c058ff4433be99f7"
        ),
    ]
)
