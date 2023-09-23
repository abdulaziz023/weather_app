abstract final class ApiConst {
  /// Weather API ----------------------------
  static String weatherPath(String city) => '/VisualCrossingWebServices/rest/services/timeline/$city';

  static Map<String, String> weatherParams({
    required String uGroup,
    required String key,
  }) =>
      {
        'unitGroup': uGroup,
        'key': key,
        'contentType': 'json',
      };
  /// ------------------------------------------

  /// Geo with IP ------------------------------
  static const geoPath = '/ipgeo';

  static Map<String, String> geoParams(String apiKey) => {
    'apiKey': apiKey,
  };
/// ------------------------------------------
}