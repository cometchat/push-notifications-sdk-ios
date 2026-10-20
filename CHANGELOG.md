# Changelog

## 2.0.0

A new major version. Read [Migrating from legacy ringing](https://www.cometchat.com/docs/calls/ios/migrating-from-legacy-ringing) before upgrading from 1.x.

### New

- **Separate products.** `CometChatPushNotificationsSwift` (core), `CometChatPushNotificationsChat` and `CometChatPushNotificationsCalls`, so an app links only what it uses. A calls-only app no longer needs the Chat SDK, and a chat-only app no longer pulls in the Calls SDK.
- **Ringing through the Calls SDK 5.1.** Every VoIP push is reported to CallKit, the call is prepared while it rings, and Answer and Decline go to the Calls SDK. Calls ring with the app killed and the phone locked.
- **Call waiting.** A call that arrives during another offers Decline (busy) or End & Accept.
- **Automatic token registration.** The APNs and VoIP tokens are registered for the logged-in user and re-registered when they change.
- **Ring readiness checks** and diagnostics for the conditions that silence calls.
- **Privacy manifests** in every framework.

### Changed

- Configuration is `PNConfiguration(appId:region:providerId:)`; `appId` and `region` are required.
- Answered calls reach your app through `presentCall(_:)` on `CometChatPushNotificationsCallsDelegate`, and every ending through `callDidEnd(_:reason:)`.
- The SDK registers and unregisters push tokens itself; call `unregisterTokens(completion:)` and wait for it before logging out.

### Removed

- The 1.x in-app incoming call view (`CometChatIncomingCallView`, `foregroundCallPresentation`): calls always ring on CallKit.
- `notifyCallsSDKReady()`: the SDK brings the Calls SDK up itself.

## 1.0.0

First release.
