##KKWeChatSDK
============
###微信官方客户端，和微信官方同步。

###重要!
#### SDK1.6.1
1. 修复armv7s下,bitcode可能编译不过
2. 解决warning


#### SDK1.6
1. iOS 9系统策略更新，限制了http协议的访问，此外应用需要在“Info.plist”中将要使用的
  URL Schemes列为白名单，才可正常检查其他应用是否安装。受此影响，当你的应用在iOS9中需要使用微信SDK的相关能力（分享、收藏、支付、登录等）时，需要在“Info.plist”里增加如下代码：

        ```
        <key>LSApplicationQueriesSchemes</key>
        <array>
        <string>weixin</string>
        </array>

        <key>NSAppTransportSecurity</key>
        <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
        </dict>
        ```

  或者配置白名单域名pingma.qq.com


2. 开发者需要在工程中链接上 CoreTelephony.framework
3. 解决bitcode编译不过问题
