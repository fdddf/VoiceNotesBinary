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
            targets: ["onnxruntime", "sherpa_onnx"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "onnxruntime",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.1/onnxruntime.xcframework.zip",
            checksum: "696e67cb4edef1c4ed58711692e1df531e646f391f7868c3da9014251bfec2bc"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.1/sherpa-onnx.xcframework.zip",
            checksum: "7bee339e57a1cd0b681015680c8be4f56d4178d5389d36ef21f24c755fcbf5e2"
        ),
    ]
)
