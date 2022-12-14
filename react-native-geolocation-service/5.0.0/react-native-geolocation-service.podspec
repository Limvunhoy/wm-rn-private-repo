require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]
  s.platforms    = { :ios => "9.0" }

  s.source       = { :git => "https://github.com/Agontuk/react-native-geolocation-service.git", :tag => "v#{s.version}" }
  s.source_files = "ios/**/*.{h,m,swift}"

  s.swift_version = "5.0"
  s.pod_target_xcconfig = {
                            "USE_HEADERMAP" => "YES",
                            "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                            "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/React-Core/Default/\""
                          }

  s.dependency 'React'
  s.dependency 'React-Core'
end

