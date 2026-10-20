Pod::Spec.new do |s|
  s.name              = 'CometChatPushNotificationsCallsCore'
  s.version           = '2.0.0'
  s.summary           = 'Ringing state for the calls product of the CometChat Push Notifications SDK. Added by CometChatPushNotificationsCalls; not meant to be added directly.'
  s.homepage          = 'https://www.cometchat.com'
  s.license           = { :type => 'Commercial', :text => 'Copyright © CometChat Inc. All rights reserved.' }
  s.author            = { 'CometChat' => 'support@cometchat.com' }
  s.documentation_url = 'https://www.cometchat.com/docs/notifications/ios-push-notifications-sdk'

  s.source            = { :http => "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/#{s.version}/CometChatPushNotificationsCallsCore-#{s.version}.xcframework.zip" }
  s.vendored_frameworks = 'CometChatPushNotificationsCallsCore.xcframework'

  s.platform          = :ios, '15.1'
  s.swift_version     = '5.9'
  s.module_name       = 'CometChatPushNotificationsCallsCore'

  s.dependency 'CometChatPushNotificationsSwift', s.version.to_s
end
