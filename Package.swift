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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.2/onnxruntime.xcframework.zip",
            checksum: "0bc04877ca38fab2c357f5c376282f9d01ab1e9482a8f54fde4aa39668ffcfc9"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.2/sherpa-onnx.xcframework.zip",
            checksum: "3b16aa9eeea86071ba53042e5f5f5a7cf78a996bead23d91455e98c9d993dfd8",
            condition: .when(platforms: [.iOS], environment: [.device])
        ),
    ]
)
