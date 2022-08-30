Pod::Spec.new do |s|
  s.name         = 'JWT'
  s.version      = '3.0.0-beta.7'
  s.summary      = 'A JSON Web Token implementation in Objective-C.'
  s.homepage     = "https://github.com/yourkarma/#{s.name}"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Klaas Pieter Annema' => 'klaaspieter@annema.me' }
  s.source       = { :git => "https://github.com/yourkarma/#{s.name}.git", :tag => s.version.to_s }


  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source_files = 'Core/**/*.{h,m}'
  s.module_name = s.name
  s.module_map  = "Core/FrameworkSupplement/Map.modulemap"
  #s.osx.exclude_files = 'JWT/**/*JWTAlgorithmRS*.{h,m}'
  s.requires_arc = true
  s.framework    = 'Security'
  s.pod_target_xcconfig = {
                            "USE_HEADERMAP" => "YES",
                            "CLANG_CXX_LANGUAGE_STANDARD" => "c++14",
                            "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/React-Core/Default/\""
                          }

  s.dependency 'React-Core'
  s.dependency 'Base64'
end
