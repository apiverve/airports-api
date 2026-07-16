# Airports Lookup API - PHP Package

Airports is a simple tool for getting airport data. It returns the airport name, location, and more.

## Installation

Install via Composer:

```bash
composer require apiverve/airports
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Airports\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['iata' => 'MCI']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Airports\Client;
use APIVerve\Airports\Exceptions\APIException;
use APIVerve\Airports\Exceptions\ValidationException;

try {
    $response = $client->execute(['iata' => 'MCI']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/airports?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://airports.apiverve.com?utm_source=php&utm_medium=readme](https://airports.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
