# Strive Podfile
using_bundler = defined? Bundler
unless using_bundler
    puts "\nPlease re-run using:".red
    puts "  bundle exec pod install\n\n"
    exit(1)
end

platform :ios, '9.0'

target 'Strive' do
  # Comment the next line if you don't want to use dynamic frameworks
  # use_frameworks!

  # Pods for Strive

  # Pods for Networking
  pod 'Moya', '~> 13.0.1'

  # Pods for Development
  pod 'SwiftLint'

  target 'StriveTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
