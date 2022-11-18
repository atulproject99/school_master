class DioCustomeHeader {
  static Future<Map<String, String>> getCustomHeaders() async {
    var accessToken = "";

    var customHeaders = {'content-type': 'application/json'};
    if (accessToken.trim().isNotEmpty) {
      customHeaders.addAll({
        'Authorization': "Bearer $accessToken",
      });
    }
    return customHeaders;
  }
}
