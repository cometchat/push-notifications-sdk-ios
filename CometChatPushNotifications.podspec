Pod::Spec.new do |s|
  s.name             = 'CometChatPushNotifications'
  s.version          = '1.0.0'
  s.summary          = 'Drop-in push notifications and VoIP calling for CometChat iOS apps.'
  s.description      = <<-DESC
    CometChatPushNotifications handles the entire push notification and VoIP calling
    integration for CometChat: APNs token registration, foreground notification
    presentation and suppression, quick reply, notification taps, campaign engagement
    receipts, a drop-in Notification Service Extension base class (delivery receipts,
    avatars, rich media), and full PushKit + CallKit incoming call handling.
  DESC
  s.homepage         = 'https://www.cometchat.com'
  s.license          = { :type => 'Commercial', :text => 'Copyright © CometChat Inc. All rights reserved.' }
  s.author           = { 'CometChat' => 'support@cometchat.com' }
  s.documentation_url = 'https://www.cometchat.com/docs/notifications/push-overview'

  s.source              = { :http => 'https://dl.cloudsmith.io/public/cometchat/cometchat/raw/versions/1.0.0/CometChatPushNotifications_1_0_0.zip' }
  s.vendored_frameworks = 'Vendors/CometChatPushNotificationsSwift.xcframework'

  s.platform         = :ios, '15.1'
  s.swift_version    = '5.0'
  s.module_name      = 'CometChatPushNotificationsSwift'

  s.dependency 'CometChatSDK', '>= 4.1.5'
  s.dependency 'CometChatCallsSDK', '>= 5.0.0'

  s.frameworks = 'UserNotifications', 'PushKit', 'CallKit', 'AVFAudio'
end
