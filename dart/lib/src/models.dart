/// Response models for the Airports Lookup API.

/// API Response wrapper.
class AirportsResponse {
  final String status;
  final dynamic error;
  final AirportsData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  AirportsResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory AirportsResponse.fromJson(Map<String, dynamic> json) => AirportsResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirportsData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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
  num? elevation;
  num? lat;
  num? lon;
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
