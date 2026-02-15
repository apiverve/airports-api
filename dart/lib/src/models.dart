/// Response models for the Airports Lookup API.

/// API Response wrapper.
class AirportsResponse {
  final String status;
  final dynamic error;
  final AirportsData? data;

  AirportsResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AirportsResponse.fromJson(Map<String, dynamic> json) => AirportsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirportsData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Airports Lookup API.

class AirportsData {
  String? icao;
  String? iata;
  String? name;
  String? city;
  String? state;
  String? country;
  int? elevation;
  double? lat;
  double? lon;
  String? tz;
  AirportsDataCityInfo? cityInfo;

  AirportsData({
    this.icao,
    this.iata,
    this.name,
    this.city,
    this.state,
    this.country,
    this.elevation,
    this.lat,
    this.lon,
    this.tz,
    this.cityInfo,
  });

  factory AirportsData.fromJson(Map<String, dynamic> json) => AirportsData(
      icao: json['icao'],
      iata: json['iata'],
      name: json['name'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      elevation: json['elevation'],
      lat: json['lat'],
      lon: json['lon'],
      tz: json['tz'],
      cityInfo: json['city_info'] != null ? AirportsDataCityInfo.fromJson(json['city_info']) : null,
    );
}

class AirportsDataCityInfo {
  String? name;
  String? altName;
  String? country;

  AirportsDataCityInfo({
    this.name,
    this.altName,
    this.country,
  });

  factory AirportsDataCityInfo.fromJson(Map<String, dynamic> json) => AirportsDataCityInfo(
      name: json['name'],
      altName: json['altName'],
      country: json['country'],
    );
}

class AirportsRequest {
  String iata;

  AirportsRequest({
    required this.iata,
  });

  Map<String, dynamic> toJson() => {
      'iata': iata,
    };
}
