Pod::Spec.new do |s|
  s.name              = 'CometChatPushNotificationsChat'
  s.version           = '2.0.0'
  s.summary           = 'Chat notifications for CometChat: delivery receipts, quick reply, chat navigation and the Notification Service Extension base class.'
  s.homepage          = 'https://www.cometchat.com'
  s.license           = { :type => 'Commercial', :text => 'Copyright © CometChat Inc. All rights reserved.' }
  s.author            = { 'CometChat' => 'support@cometchat.com' }
  s.documentation_url = 'https://www.cometchat.com/docs/notifications/ios-push-notifications-sdk'

  s.source            = { :http => "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/#{s.version}/CometChatPushNotificationsChat-#{s.version}.xcframework.zip" }
  s.vendored_frameworks = 'CometChatPushNotificationsChat.xcframework'

  s.platform          = :ios, '15.1'
  s.swift_version     = '5.9'
  s.module_name       = 'CometChatPushNotificationsChat'
  s.frameworks        = 'UserNotifications'

  s.dependency 'CometChatPushNotificationsSwift', s.version.to_s
  s.dependency 'CometChatSDK', '~> 4.1', '>= 4.1.10'
end
