Pod::Spec.new do |s|
  s.name                  = 'Coordination'
  s.version               = '0.1.0'
  s.summary               = 'A tool for coordination between flows and screens.'
  
  s.homepage              = 'https://github.com/DanilaG/'
  s.license               = { :type => 'MIT' }
  s.author                = { 'DanilaG' => 'dndv279@gmail.com' }
  s.source                = { :git => '' }

  s.platform              = :ios
  s.ios.deployment_target = '14.0'
  
  s.source_files = '**/*.swift'
  s.exclude_files = ['**/*.podspec']

  s.dependency 'Swinject'
  
end
