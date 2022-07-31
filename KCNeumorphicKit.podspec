#
# Be sure to run `pod lib lint KCNeumorphicKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KCNeumorphicKit'
  s.version          = '0.1.0'
  s.swift_version    = '5.0'
  s.summary          = 'KCNeumorphicKit is a library to develop Neumorphic UI for iOS applications using Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  NeuKit is a library built using cocoa pods to develop Neumorphic UI for iOS application using Swift programming language. Today, the world is moving more and more towards usage of mobile applications. Also, within the last decade, massive amount of applications has been developed for users to solve real life problems with user friendly UI. In the new era, UI developed using neumorphic design will overcome the traditional plain UI and this library will help developers to develop highly attractive UI for their applications.
                                        DESC

  s.homepage         = 'https://github.com/KushalChoudhary14sep/KCNeumorphicKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KushalChoudhary14sep' => 'kushal14sep@gmail.com' }
  s.source           = { :git => 'https://github.com/KushalChoudhary14sep/KCNeumorphicKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'KCNeumorphicKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KCNeumorphicKit' => ['KCNeumorphicKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
