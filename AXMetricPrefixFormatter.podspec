#
# Be sure to run `pod lib lint AXMetricPrefixFormatter.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AXMetricPrefixFormatter"
  s.version          = "0.1.0"
  s.summary          = "Convert NSNumber(Integer) to NSString with metric prefix."
  s.description      = <<-DESC
                       Convert NSNumber(Integer) to NSString with metric prefix.
                       - 0 -> 0
                       - 987 -> 987
                       - 1200 -> 1.2K
                       - 100834923 -> 101M
                       - 10500000000 -> 10.5B
                       - 1230000000000 -> 1.23T
                       - -10200 -> -10.2K
                       DESC
  s.homepage         = "https://github.com/akiroom/AXMetricPrefixFormatter"
  s.license          = 'MIT'
  s.author           = { "Hiroki Akiyama" => "aki-hiroki@nifty.com" }
  s.source           = { :git => "https://github.com/akiroom/AXMetricPrefixFormatter.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/akiroom'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'AXMetricPrefixFormatter' => ['Pod/Assets/*.png']
  }
end
