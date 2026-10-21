# Airports Lookup API - Ruby Gem

Airports Lookup resolves 3-letter IATA codes into official airport names, matching ICAO codes, cities, states, and country codes. Paid plans add ICAO code lookups, geographic coordinates, elevation, and local timezones across more than 40,000 facilities.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_airports'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_airports
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_airports'

# Initialize the client
client = APIVerve::Airports::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ iata: "MCI" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ iata: "MCI" })
  puts response["data"]
rescue APIVerve::Airports::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Airports::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Airports::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "icao": "KMCI",
    "iata": "MCI",
    "name": "Kansas City International Airport",
    "city": "Kansas City",
    "state": "Missouri",
    "country": "US",
    "elevation": 1026,
    "lat": 39.2975997925,
    "lon": -94.7138977051,
    "tz": "America/Chicago",
    "city_info": {
      "name": "Kansas City",
      "altName": "",
      "country": "US"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airports?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/airports?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/airports?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
