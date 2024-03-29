Pod::Spec.new do |s|
  s.name             = 'kushki-ios-arm'
  s.version          = '2.6.0'
  s.summary          = 'Kushki iOS library.'
  s.description      = 'iOS library to integrate with Kushki for arm.'
  s.homepage         = 'https://github.com/Kushki/kushki-ios-arm'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kushki' => 'devops@kushkipagos.com' }
  s.source           = { :git => 'https://github.com/Kushki/kushki-ios-arm.git', :tag => "v#{s.version.to_s}" }
  s.ios.deployment_target = '14.3'
  s.source_files     = 'kushki-ios-arm/Classes/**/*'
  s.resources        = "kushki-ios-arm/Assets/**/*"
  s.dependency "Sift"
  s.ios.vendored_frameworks = 'kushki-ios-arm/Frameworks/CardinalMobile.framework','kushki-ios-arm/Frameworks/VisaSensoryBranding.framework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end