require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                 = "react-native-google-maps"
  s.version              = package['version']
  s.summary              = package["description"]
  s.authors              = package["author"]
  s.homepage             = package["homepage"]
  s.license              = package["license"]
  s.platform             = :ios, "13.0"

  s.source               = { :git => "https://github.com/react-native-maps/react-native-maps.git", :tag=> "v#{s.version}" }
  s.source_files         = "ios/AirGoogleMaps/**/*.{h,m}"
  s.public_header_files  = "ios/AirGoogleMaps/**/*.h"
  s.compiler_flags = '-DHAVE_GOOGLE_MAPS=1', '-DHAVE_GOOGLE_MAPS_UTILS=1', '-fno-modules'
  s.static_framework     = true
  s.pod_target_xcconfig = {
                            "USE_HEADERMAP" => "YES",
                            "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                            "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/React-Core/Default/\" \"$(PODS_ROOT)/Google-Maps-iOS-Utils/\""
                          }

  s.dependency 'React-Core'
  s.dependency 'GoogleMaps'
  s.dependency 'Google-Maps-iOS-Utils'
  # s.dependency 'react-native-maps'
end
