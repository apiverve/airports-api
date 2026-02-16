# Airports Lookup API - Dart/Flutter Client

Airports is a simple tool for getting airport data. It returns the airport name, location, and more.

[![pub package](https://img.shields.io/pub/v/apiverve_airports.svg)](https://pub.dev/packages/apiverve_airports)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Airports Lookup API](https://apiverve.com/marketplace/airports?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_airports: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_airports/apiverve_airports.dart';

void main() async {
  final client = AirportsClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'iata': 'MCI'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Airports Lookup API](https://apiverve.com/marketplace/airports?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/airports](https://docs.apiverve.com/ref/airports?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
