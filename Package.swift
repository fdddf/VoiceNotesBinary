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
            checksum: "a64dbd91c6f0177050f9a58791c45454582fdd45ff8fc8affbfdee39efc5a9dc"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v20251128/sherpa-onnx.xcframework.zip",
            checksum: "344eebd0e0a04d56c320421187c2ce47d6f8cac9bac8f1cc4ee3181d654a299d"
        ),
    ]
)
