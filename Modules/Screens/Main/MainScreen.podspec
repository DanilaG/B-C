Pod::Spec.new do |s|
  s.name                  = 'MainScreen'
  s.version               = '0.1.0'
  s.summary               = 'A main screen of B&C.'
  
  s.homepage              = 'https://github.com/DanilaG/'
  s.license               = { :type => 'MIT' }
  s.author                = { 'DanilaG' => 'dndv279@gmail.com' }
  s.source                = { :git => '' }

  s.platform              = :ios
  s.ios.deployment_target = '15.0'
  
  s.source_files = '**/*.swift'
  s.exclude_files = ['**/*.podspec', 'Tests/**/*']
  s.resource = ['**/*.strings']

  s.dependency 'Coordination'
  s.dependency 'FoundationPlus'
  s.dependency 'UIPlus'
  s.dependency 'SnapKit'
  s.dependency 'Swinject'
  
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/**/*.swift'
  
    test_spec.dependency 'Nimble'
    test_spec.dependency 'Quick'
    test_spec.dependency 'SwiftyMocky'
  end
  
end
