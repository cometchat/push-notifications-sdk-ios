<p align="center">
  <img alt="CometChat" src="https://assets.cometchat.io/website/images/logos/banner.png">
</p>

# CometChat iOS Push Notifications SDK

The CometChat iOS Push Notifications SDK handles push notifications and incoming calls for a CometChat app: it registers the APNs and VoIP tokens for the logged-in user, presents chat notifications with quick reply and delivery receipts, routes notification taps, and rings incoming calls through PushKit and CallKit in every app state, the app killed included.

Version 2.0 is split into products, so your app links only what it uses:

| Product | Use it for | Brings |
| --- | --- | --- |
| `CometChatPushNotificationsSwift` | Token registration, notification presentation and taps | — |
| `CometChatPushNotificationsChat` | Chat notifications: delivery receipts, quick reply, chat navigation, the Notification Service Extension base class | [Chat SDK](https://github.com/cometchat/chat-sdk-ios) 4.1.10+ |
| `CometChatPushNotificationsCalls` | Ringing incoming calls with PushKit and CallKit, joined with the Calls SDK | [Calls SDK](https://github.com/cometchat/calls-sdk-ios) 5.1+ |

A calls-only app links the Calls product without the Chat SDK; a chat-only app links the Chat product without the Calls SDK.

## Prerequisites

- Xcode 16.4 or later
- iOS 15.1 and later
- An APNs auth key (`.p8`) from your Apple Developer account

## Getting Started

1. Register on the [CometChat Dashboard](https://app.cometchat.com/) and create an app. Note its App ID and region.
2. In the dashboard, enable **Push Notifications**, add an APNs provider with your `.p8` key, and note the **Provider ID**.
3. Read [Key Concepts](https://www.cometchat.com/docs/fundamentals/key-concepts) for the basic CometChat components.
4. Follow [iOS Push Notifications](https://www.cometchat.com/docs/notifications/ios-push-notifications-sdk) to integrate chat notifications, and [Push Ringing](https://www.cometchat.com/docs/calls/ios/voip-calling) for incoming calls.

## Installation

The SDK ships as prebuilt binaries (xcframeworks) through Swift Package Manager.

### Swift Package Manager

In Xcode, go to **File → Add Package Dependencies**, enter

```
https://github.com/cometchat/push-notifications-sdk-ios.git
```

choose version `2.0.0` (Up to Next Major), and add the products your app needs. The Chat and Calls SDKs are resolved for you.

## Upgrading from 1.x

The single `CometChatPushNotifications` product is replaced by the products above, and ringing now runs through the Calls SDK 5.1. See [iOS Push Notifications](https://www.cometchat.com/docs/notifications/ios-push-notifications-sdk) and [Migrating from legacy ringing](https://www.cometchat.com/docs/calls/ios/migrating-from-legacy-ringing). Version 1.x stays on the `v1` branch.

## Help and Support

For issues running the project or integrating with our SDKs, consult our [documentation](https://www.cometchat.com/docs/notifications/push-overview) or create a [support ticket](https://help.cometchat.com/hc/en-us) or seek real-time support via the [CometChat Dashboard](https://app.cometchat.com/).
