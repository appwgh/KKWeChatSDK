#
# Be sure to run `pod lib lint WechatSDk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "KKWeChatSDK"
s.version          = "1.6"
s.summary          = "WeChat iOS SDK."
s.homepage         = "https://open.weixin.qq.com"
s.license          = { :type => 'LGPL', :text => <<-LICENSE
                        ® 1998 - 2014 Tencent All Rights Reserved.
                        LICENSE
                     }
s.author           = { "weixinapp" => "weixinapp@qq.com" }
s.source           = { :git => "https://github.com/appwgh/WechatSDK.git", :tag => s.version }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'libWeChatSDK/*.{h,m}'
s.vendored_libraries  = 'libWeChatSDK/libWeChatSDK.a'

s.frameworks = 'ImageIO', 'SystemConfiguration', 'Security', 'CoreTelephony'
s.library = 'z', 'sqlite3', 'c++'

end