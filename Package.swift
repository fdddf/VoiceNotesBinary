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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.0/onnxruntime.xcframework.zip",
            checksum: "5b5709cec1c8fb077843f2ba1b680ad69308cb7f395d196529c0cca1033db230"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.0/sherpa-onnx.xcframework.zip",
            checksum: "1d0b6cd585a5e3245a4a5ba885074481de6de20fe433cd5c3191bea1dd18061d"
        ),
    ]
)
