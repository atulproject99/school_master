abstract class StroageSevice {
  Future<void> addData(String key, String data);
  Future<String?> getData(String key);
  Future<Map<String, String>> getCustomHeader();
  Future<void> removeData();
}
