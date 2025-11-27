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
            checksum: "5d95fae1773d4d55bbb60569cfc0b7ec5166f31a7b2d4fb09a2f504c0e6277b6"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v20251128/sherpa-onnx.xcframework.zip",
            checksum: "416520916a5082f8974f4b7828a05a206c55ffa1bd93faf23341e0ba86e0bddb"
        ),
    ]
)
