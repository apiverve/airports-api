Pod::Spec.new do |s|
  s.name             = 'APIVerveAirportsLookup'
  s.version          = '1.2.3'
  s.summary          = 'Airports Lookup resolves 3-letter IATA codes into official airport names, matching ICAO codes, cities, states, and country codes.'
  s.description      = <<-'DESC'
Airports Lookup resolves 3-letter IATA codes into official airport names, matching ICAO codes, cities, states, and country codes. Paid plans add ICAO code lookups, geographic coordinates, elevation, and local timezones across more than 40,000 facilities.

This iOS/macOS SDK provides a convenient way to access the Airports Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/airports?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/airports-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveAirportsLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
