Pod::Spec.new do |s|
  s.name                    = "KontaktProximitySDK"
  s.version                 = "1.0.1"
  s.license                 = { :type => 'CC-ND', :file => 'LICENSE' }
  s.summary                 = "The Kontakt.io Proximity SDK provides the simplest way to manage triggers and all proximity-based actions with just few lines of code."
  s.homepage                = "http://kontakt.io"
  s.author                  = { "Kontakt.io" => "ios@kontakt.io" }
  s.module_name             = "ProximitySDK"
  
  s.ios.deployment_target   = "8.0"
  s.ios.frameworks          = "UIKit", "Foundation", "SystemConfiguration", "MobileCoreServices", "CoreLocation", "CoreBluetooth"
  
  s.ios.dependency  "KontaktSDK"

  s.source = {
    :http    => "http://omg.kontakt.io.s3.amazonaws.com/ios/builds/kontakt-ios-proximity-sdk-#{s.version.to_s}.zip",
    :flatten => true
  }
  
  s.ios.vendored_frameworks = "Cocoapods/iOS/ProximitySDK.framework"
  
  s.requires_arc  = true
end
