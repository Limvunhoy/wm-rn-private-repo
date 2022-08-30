require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-contacts"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/geektimecoil/react-native-onesignal"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "https://github.com/rt2zz/react-native-contacts.git" } 
  s.source_files   = 'ios/RCTContacts/*.{h,m}'

  s.pod_target_xcconfig = {
                            "USE_HEADERMAP" => "YES",
                            "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                            "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/React-Core/Default/\""
                          }

  s.dependency 'React-Core'
end
