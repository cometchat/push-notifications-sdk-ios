//
//  Exports.swift
//  CometChatPushNotifications
//
//  This target exists only to attach the CometChatSDK and CometChatCallsSDK
//  package dependencies to the CometChatPushNotificationsSwift library product —
//  SPM binary targets cannot declare dependencies. Importing it re-exports
//  nothing; consumers `import CometChatSDK` / `import CometChatCallsSDK`
//  directly where they use those types.
//

import CometChatCallsSDK
import CometChatSDK
