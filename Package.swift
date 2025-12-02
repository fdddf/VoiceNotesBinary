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
        .target(
            name: "VoiceNotesBinary",
            dependencies: ["onnxruntime", "sherpa_onnx"],
            path: "Sources/VoiceNotesBinary"
        ),
        .binaryTarget(
            name: "onnxruntime",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.4/onnxruntime.xcframework.zip",
            checksum: "1b890d9647e69f56977d55a28ed2f73370f872cbf7870da834573ec6078c7dca"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.4/sherpa-onnx.xcframework.zip",
            checksum: "78ddcc235c109e77889170fae12ee65035e2b919e8e8b636f177e9aafb00b1c5"
        ),
    ]
)
