#
# Be sure to run `pod lib lint MLLKits.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "OcArsenal"
s.version          = "0.2.0"
s.summary          = "A category lib with Objective-c."
s.authors		   = "louis cai"
s.homepage		   = "https://github.com/louis-cai/OcArsenal"
s.license          = 'MIT'
s.source           = { :git => "https://github.com/louis-cai/OcArsenal.git", :tag => s.version.to_s }

s.platform     = :ios
s.requires_arc = true
s.frameworks = 'Foundation'

s.default_subspec = 'NSKit'
s.subspec 'NSKit' do |core|
core.source_files = 'OcArsenal/NS/*.{h,m}'
end

s.subspec 'UIKit' do |ui|
ui.source_files = 'OcArsenal/UI/*.{h,m}'
end