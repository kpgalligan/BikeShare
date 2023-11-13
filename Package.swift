// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/kpgalligan/BikeShare/com/kgalligan/kmmbridgekickstartskie/common-kmmbridge/1.3.1/common-kmmbridge-1.3.1.zip"
let remoteKotlinChecksum = "3611cb46007bd2c2e8baa6a66ee779718d79a9c1210f72c3049148eb1bd9761e"
let packageName = "BikeShareKit"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)