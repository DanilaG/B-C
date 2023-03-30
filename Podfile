# Uncomment the next line to define a global platform for your project
platform :ios, '15.0'

plugin 'cocoapods-developing-folder'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
  installer.pods_project.build_configurations.each do |config|
    config.build_settings['DEAD_CODE_STRIPPING'] = 'YES'
  end
end

local_pod_searching_root 'Modules'
use_folders :skip_top_level_group => ['Modules']

target 'BAndC' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for BAndC
  pod 'SnapKit', '5.6.0'
  pod 'SwiftLint', '~> 0.49.1'
  pod 'Swinject', '2.8.2'

  # Local pods for BAndC
  # Common
  local_pod 'Coordination'
  local_pod 'FoundationPlus'
  local_pod 'UIPlus'
  # Screens
  local_pod 'MainScreen', :testspecs => ['Tests']

  abstract_target 'Tests' do
    target "BAndCTests"

    pod 'Nimble', '11.2.1'
    pod 'Quick', '6.1.0'
    pod 'SwiftyMocky', '4.1.0'
  end
end
