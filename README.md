<p align="center">
  <img alt="CometChat" src="https://assets.cometchat.io/website/images/logos/banner.png">
</p>

# CometChat iOS Push Notifications SDK

The CometChat iOS Push Notifications SDK provides a drop-in push notifications & VoIP calling integration that developers can use to quickly add a reliable & fully-featured notification experience to an existing or a new CometChat-powered app — APNs token registration, foreground presentation, notification taps, quick reply, delivery & campaign receipts, and full PushKit + CallKit incoming call handling, all handled inside the SDK.

## Prerequisites

- Xcode
- iOS 15.1 and later
- Swift 5.9+
- APNs credentials from your Apple Developer account

## Getting Started

To set up the iOS Push Notifications SDK and utilize CometChat for your notification functionality, you'll need to follow these steps:

1. Registration: Go to the [CometChat Dashboard](https://app.cometchat.com/) and sign up for an account.
2. After registering, log into your CometChat account and create a new app. Once created, CometChat will generate an Auth Key and App ID for you. Keep these credentials secure as you'll need them later.
3. In the dashboard, enable **Push Notifications v2**, add your APNs credentials, and note the **Provider ID**.
4. Check the [Key Concepts](https://www.cometchat.com/docs/fundamentals/key-concepts) to understand the basic components of CometChat.
5. Refer to the [Push Notifications documentation](https://www.cometchat.com/docs/notifications/push-overview) to integrate the SDK into your iOS app.

## Installation

The SDK ships as a prebuilt binary (xcframework).

### Swift Package Manager

In Xcode, go to **File → Add Package Dependencies** and enter:

```
https://github.com/cometchat/push-notifications-sdk-ios.git
```

> **Important:** you must also add these two packages to your app:
>
> | Package | Minimum version |
> | --- | --- |
> | [`cometchat/chat-sdk-ios`](https://github.com/cometchat/chat-sdk-ios) | **4.1.5** |
> | [`cometchat/calls-sdk-ios`](https://github.com/cometchat/calls-sdk-ios) | **5.0.0** |
>
> Without them the build fails with `Unable to resolve module dependency`.

### CocoaPods

```ruby
platform :ios, '15.1'

target 'YourApp' do
  use_frameworks!
  pod 'CometChatPushNotifications', '1.0.0'
end
```

CocoaPods resolves `CometChatSDK` and `CometChatCallsSDK` for you.

## Help and Support

For issues running the project or integrating with our SDKs, consult our [documentation](https://www.cometchat.com/docs/notifications/push-overview) or create a [support ticket](https://help.cometchat.com/hc/en-us) or seek real-time support via the [CometChat Dashboard](https://app.cometchat.com/).
