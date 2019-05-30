# Strava Podfile
using_bundler = defined? Bundler
unless using_bundler
    puts "\nPlease re-run using:".red
    puts "  bundle exec pod install\n\n"
    exit(1)
end

platform :ios, '9.0'

target 'Strava' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Strava

  # Pods for Networking
  pod 'Moya', '~> 13.0.1'

  target 'StravaTests' do
    inherit! :search_paths
    # Pods for testing
  end

end
