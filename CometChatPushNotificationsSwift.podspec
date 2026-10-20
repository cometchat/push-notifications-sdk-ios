Pod::Spec.new do |s|
  s.name              = 'CometChatPushNotificationsSwift'
  s.version           = '2.0.0'
  s.summary           = 'Core of the CometChat Push Notifications SDK: token registration, notification presentation and taps.'
  s.homepage          = 'https://www.cometchat.com'
  s.license           = { :type => 'Commercial', :text => 'Copyright © CometChat Inc. All rights reserved.' }
  s.author            = { 'CometChat' => 'support@cometchat.com' }
  s.documentation_url = 'https://www.cometchat.com/docs/notifications/ios-push-notifications-sdk'

  s.source            = { :http => "https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/#{s.version}/CometChatPushNotificationsSwift-#{s.version}.xcframework.zip" }
  s.vendored_frameworks = 'CometChatPushNotificationsSwift.xcframework'

  s.platform          = :ios, '15.1'
  s.swift_version     = '5.9'
  s.module_name       = 'CometChatPushNotificationsSwift'
  s.frameworks        = 'UserNotifications'
end
