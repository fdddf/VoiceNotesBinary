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
            checksum: "dcc7fc35332e643be602fdf63c6b746e2ce39e73eae2accb372c7e5a1379339a"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v20251128/sherpa-onnx.xcframework.zip",
            checksum: "bbd1b422ef7b9e8690a0dd04373b94cc3349411510e2e79d6350e9b4674777b3"
        ),
    ]
)
