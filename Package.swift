// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CometChatPushNotifications",
    platforms: [
        .iOS("15.1")
    ],
    products: [
        // Both targets ship in the one product: the prebuilt push binary plus a
        // wrapper target that exists only to pull in the two SDKs it imports (a
        // binary target cannot declare dependencies itself). Linking the product
        // resolves them for the consumer, which is what the binary's own
        // .swiftinterface requires in order to compile.
        .library(
            name: "CometChatPushNotificationsSwift",
            targets: [
                "CometChatPushNotificationsSwift",
                "CometChatPushNotificationsSwiftDependencies"
            ]
        ),
    ],
    dependencies: [
        // Floors match the podspec, which has always declared both correctly
        // (ENG-39339): CometChatSDK >= 4.1.5, CometChatCallsSDK >= 5.0.0.
        .package(url: "https://github.com/cometchat/chat-sdk-ios.git", from: "4.1.5"),
        .package(url: "https://github.com/cometchat/calls-sdk-ios.git", from: "5.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "CometChatPushNotificationsSwift",
            url: "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/1.0.0/CometChatPushNotificationsSwift_1.0.0.xcframework.zip",
            checksum: "9e4ad449e4247ea5194606efadf9cec8313bc9d4453c9df09cb1c83aca3e1e80"
        ),
        .target(
            name: "CometChatPushNotificationsSwiftDependencies",
            dependencies: [
                .product(name: "CometChatSDK", package: "chat-sdk-ios"),
                .product(name: "CometChatCallsSDK", package: "calls-sdk-ios")
            ],
            path: "Sources/CometChatPushNotificationsSwiftDependencies"
        )
    ]
)
