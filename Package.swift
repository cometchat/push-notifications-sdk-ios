// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CometChatPushNotifications",
    platforms: [
        .iOS("15.1")
    ],
    products: [
        .library(
            name: "CometChatPushNotificationsSwift",
            targets: ["CometChatPushNotificationsSwift"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CometChatPushNotificationsSwift",
            url: "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/1.0.0/CometChatPushNotificationsSwift_1.0.0.xcframework.zip",
            checksum: "9e4ad449e4247ea5194606efadf9cec8313bc9d4453c9df09cb1c83aca3e1e80"
        )
    ]
)
