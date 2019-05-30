Pod::Spec.new do |s|
  s.name         = "Strive"
  s.version      = "0.1.0"
  s.summary      = "Strive for Strava"
  s.description  = <<-DESC
  Strava SDK for IOS / WatchOS in Swift
  DESC
  s.homepage     = "https://github.com/udaypandey/Strive"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Uday" => "uday.pandey@gmail.com" }
  s.source       = { :git => "https://github.com/udaypandey/Strive.git", :tag => "#{s.version}" }
  s.source_files  = "Strive","Strive/**/*.swift"
  s.public_header_files = "Strive/**/*.h"
  s.swift_version = '5.0'

  s.ios.deployment_target = '9.0'

  s.dependency "Moya", "~> 13.0.1"

end
