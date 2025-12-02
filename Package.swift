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
            targets: ["VoiceNotesBinary"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "onnxruntime",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.3/onnxruntime.xcframework.zip",
            checksum: "509bf0f30693b89cc718d667cd84cc41c7e8fbd53a4d43f624f0ec6f6aee78b0"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.3/sherpa-onnx.xcframework.zip",
            checksum: "5bf334fb54bf0cadcac95b29ebc7984c626dfa635d0eb766ad1ab25e0014f1f9"
        ),
    ]
)
