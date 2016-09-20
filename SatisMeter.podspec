#
# Be sure to run `pod lib lint SatisMeter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SatisMeter"
  s.version          = "0.2.3"
  s.summary          = "SatisMeter SDK for iOS mobile survey"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
        SatisMeter is mobile and web platform for collecting customer feedback, based on Net Promoter Score. This package contains a survey widget that can be easily integrated into any iOS application.
                       DESC

  s.homepage         = "https://github.com/satismeter/satismeter-ios"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Satis Meter" => "https://satismeter.com" }
  s.source           = { :git => "https://github.com/satismeter/satismeter-ios.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/satismeter'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.{h,m}'
  s.resource_bundles = {
  'SatisMeter' => ['Pod/Assets/*.bundle']
  }
  s.resources = 'Pod/Assets/**/*.bundle'
  s.vendored_libraries = 'Pod/Assets/**/*.a'
#  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
#  s.dependency 'AFNetworking', '~> 2.3'

end
