#
# Be sure to run `pod lib lint LyonPodTestLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LyonPodTestLibrary'
  s.version          = '0.1.3'
  s.summary          = 'A short description of LyonPodTestLibrary.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/nicolasiJasica/LyonPodTestLibrary.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '亮儿' => 'nicolasi.wei@gmail.com' }
  s.source           = { :git => 'https://github.com/nicolasiJasica/LyonPodTestLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LyonPodTestLibrary/Classes/**/*'

  # s.resource_bundles = {
  #   'LyonPodTestLibrary' => ['LyonPodTestLibrary/Assets/*.png']
  # }

  s.vendored_frameworks = 'Vendor/staticFramework.framework'

  s.public_header_files = 'LyonPodTestLibrary/Classes/**/*.h'
  s.frameworks = 'UIKit', 'CoreGraphics','Foundation'
  s.dependency 'AFNetworking'
end
