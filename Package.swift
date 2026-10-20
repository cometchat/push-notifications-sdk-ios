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
            checksum: "f3de5c9729efb35cba6b35e6618eaed67a66662bdfd10342355a0e4e789fc1c4"
        ),
        .binaryTarget(
            name: "CometChatPushNotificationsChat",
            url: "\(base)/CometChatPushNotificationsChat-\(version).xcframework.zip",
            checksum: "6d0a328dbe661dd5cb4620446e717df717d4d78348732ea8170ce2ce84152927"
        ),
        .binaryTarget(
            name: "CometChatPushNotificationsCallsCore",
            url: "\(base)/CometChatPushNotificationsCallsCore-\(version).xcframework.zip",
            checksum: "d1cc3e4c149df9b5ff37f7658ab9241d7d5c0ed24bf119019ba11325c9b169d7"
        ),
        .binaryTarget(
            name: "CometChatPushNotificationsCalls",
            url: "\(base)/CometChatPushNotificationsCalls-\(version).xcframework.zip",
            checksum: "b008d6afd186fe8c44158babd3dca974b323586ed1d67b691e903baf2735cd00"
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
