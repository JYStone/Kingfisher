Pod::Spec.new do |s|

  s.name         = "Kingfisher"
  s.version      = "4.5.0"
  s.summary      = "A lightweight and pure Swift implemented library for downloading and cacheing image from the web."

  s.description  = <<-DESC
                   Kingfisher is a lightweight and pure Swift implemented library for downloading and cacheing image from the web. It provides you a chance to use pure Swift alternation in your next app.

                   * Everything in Kingfisher goes asynchronously, not only downloading, but also caching. That means you can never worry about blocking your UI thread.
                   * Multiple-layer cache. Downloaded image will be cached in both memory and disk. So there is no need to download it again and this could boost your app dramatically.
                   * Cache management. You can set the max duration or size the cache could take. And the cache will also be cleaned automatically to prevent taking too much resource.
                   * Modern framework. Kingfisher uses `NSURLSession` and the latest technology of GCD, which makes it a strong and swift framework. It also provides you easy APIs to use.
                   * Cancellable processing task. You can cancel the downloading or retriving image process if it is not needed anymore.
                   * Independent components. You can use the downloader or caching system separately. Or even create your own cache based on Kingfisher's code.
                   * Options to decompress the image in background before render it, which could improve the UI performance.
                   * A category over `UIImageView` for setting image from an url directly.
                   DESC

  s.homepage     = "https://github.com/onevcat/Kingfisher"
  s.screenshots  = "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.authors            = { "onevcat" => "onevcat@gmail.com" }
  s.social_media_url   = "http://twitter.com/onevcat"

  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "2.0"

  s.source       = { :git => "https://github.com/onevcat/Kingfisher.git", :tag => s.version }
  
  s.source_files  = ["Sources/*.swift", "Sources/Kingfisher.h", "Sources/Kingfisher.swift"]
  s.public_header_files = ["Sources/Kingfisher.h"]
  
  s.osx.exclude_files = ["Sources/AnimatedImageView.swift", "Sources/UIButton+Kingfisher.swift"]
  s.watchos.exclude_files = ["Sources/AnimatedImageView.swift", 
                             "Sources/UIButton+Kingfisher.swift", 
                             "Sources/ImageView+Kingfisher.swift", 
                             "Sources/NSButton+Kingfisher.swift", 
                             "Sources/Indicator.swift", 
                             "Sources/Filter.swift",
                             "Sources/Placeholder.swift"
                            ]
  s.ios.exclude_files = "Sources/NSButton+Kingfisher.swift"
  s.tvos.exclude_files = "Sources/NSButton+Kingfisher.swift"
  
  s.resources = ['Sources/CommonCrypto']

  s.requires_arc = true
  s.framework = "CFNetwork"

  s.pod_target_xcconfig = { 
    'SWIFT_VERSION'                              => '4.0', 
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'         => '$(PODS_TARGET_SRCROOT)/Sources/CommonCrypto/iPhoneOS',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'  => '$(PODS_TARGET_SRCROOT)/Sources/CommonCrypto/iPhoneSimulator', 
    'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'        => '$(PODS_TARGET_SRCROOT)/Sources/CommonCrypto/appleTVOS',
    'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]' => '$(PODS_TARGET_SRCROOT)/Sources/CommonCrypto/appleTVSimulator',
    'SWIFT_INCLUDE_PATHS[sdk=macosx*]'           => '$(PODS_TARGET_SRCROOT)/Sources/CommonCrypto/macOSX',
    'SWIFT_INCLUDE_PATHS[sdk=watchos*]'          => '$(PODS_TARGET_SRCROOT)/Sources/CommonCrypto/watchOS',
    'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'   => '$(PODS_TARGET_SRCROOT)/Sources/CommonCrypto/watchSimulator',
  }
end
