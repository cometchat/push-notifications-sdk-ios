// swift-tools-version: 5.9
import PackageDescription

// Push Notifications SDK 2.0, as prebuilt xcframeworks. Pick the product your app needs:
//
//   CometChatPushNotificationsSwift  Core: token registration, notification presentation and taps.
//   CometChatPushNotificationsChat   Core + chat: delivery receipts, quick reply, chat navigation,
//                                    the Notification Service Extension base class. Brings the Chat SDK.
//   CometChatPushNotificationsCalls  Core + calls: PushKit, CallKit and ringing. Brings the Calls SDK.
//
// A binary target cannot declare dependencies, so each product adds a small source target that
// links the Chat or Calls SDK for it.

let version = "2.0.0"
let base = "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/\(version)"

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
        .library(
            name: "CometChatPushNotificationsChat",
            targets: [
                "CometChatPushNotificationsChat",
                "CometChatPushNotificationsSwift",
                "CometChatPushNotificationsChatDependencies",
            ]
        ),
        .library(
            name: "CometChatPushNotificationsCalls",
            targets: [
                "CometChatPushNotificationsCalls",
                "CometChatPushNotificationsCallsCore",
                "CometChatPushNotificationsSwift",
                "CometChatPushNotificationsCallsDependencies",
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/cometchat/chat-sdk-ios.git", from: "4.1.10"),
        .package(url: "https://github.com/cometchat/calls-sdk-ios.git", from: "5.1.0"),
    ],
    targets: [
        .binaryTarget(
            name: "CometChatPushNotificationsSwift",
            url: "\(base)/CometChatPushNotificationsSwift-\(version).xcframework.zip",
            checksum: "bea8b3a91aeef37a4a968e5e9bed3e059ceac6893fccad01bd71af5f5e91515b"
        ),
        .binaryTarget(
            name: "CometChatPushNotificationsChat",
            url: "\(base)/CometChatPushNotificationsChat-\(version).xcframework.zip",
            checksum: "be28bb6751c873cda77c3515e3eea6ae045b99ac182134ae6d16282b287ea524"
        ),
        .binaryTarget(
            name: "CometChatPushNotificationsCallsCore",
            url: "\(base)/CometChatPushNotificationsCallsCore-\(version).xcframework.zip",
            checksum: "beec92409c23a4285d468d17c67cad6fde3fe4855dc9d441ddf378a047591ebe"
        ),
        .binaryTarget(
            name: "CometChatPushNotificationsCalls",
            url: "\(base)/CometChatPushNotificationsCalls-\(version).xcframework.zip",
            checksum: "3d614d1d5d8738afce562a49d4a0793c6235c82683f10f49d67a894c33cd852c"
        ),
        .target(
            name: "CometChatPushNotificationsChatDependencies",
            dependencies: [.product(name: "CometChatSDK", package: "chat-sdk-ios")]
        ),
        .target(
            name: "CometChatPushNotificationsCallsDependencies",
            dependencies: [.product(name: "CometChatCallsSDK", package: "calls-sdk-ios")]
        ),
    ]
)
