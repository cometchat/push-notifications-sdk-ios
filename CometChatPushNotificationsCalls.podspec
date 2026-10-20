Pod::Spec.new do |s|
  s.name              = 'CometChatPushNotificationsCalls'
  s.version           = '2.0.0'
  s.summary           = 'Calls for CometChat: PushKit, CallKit and ringing in every app state, joined with the CometChat Calls SDK.'
  s.homepage          = 'https://www.cometchat.com'
  s.license           = { :type => 'Commercial', :text => 'Copyright © CometChat Inc. All rights reserved.' }
  s.author            = { 'CometChat' => 'support@cometchat.com' }
  s.documentation_url = 'https://www.cometchat.com/docs/notifications/ios-push-notifications-sdk'

  s.source            = { :http => "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/#{s.version}/CometChatPushNotificationsCalls-#{s.version}.xcframework.zip" }
  s.vendored_frameworks = 'CometChatPushNotificationsCalls.xcframework'

  s.platform          = :ios, '15.1'
  s.swift_version     = '5.9'
  s.module_name       = 'CometChatPushNotificationsCalls'
  s.frameworks        = 'PushKit', 'CallKit', 'AVFAudio'

  s.dependency 'CometChatPushNotificationsCallsCore', s.version.to_s
  s.dependency 'CometChatCallsSDK', '~> 5.1'
end
