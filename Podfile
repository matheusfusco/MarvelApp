# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'Marvel App' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Marvel
  pod 'AFNetworking', '~> 2.5'
  pod 'SVProgressHUD'
  pod 'RealmSwift', :git => 'https://github.com/realm/realm-cocoa.git', :submodules => true
  pod 'Realm', :git => 'https://github.com/realm/realm-cocoa.git', :submodules => true
  pod 'SDWebImage'
  pod 'SWRevealViewController'

  target 'Marvel AppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'Marvel AppUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |configuration|
            configuration.build_settings['SWIFT_VERSION'] = "3.0"
        end
    end
end
