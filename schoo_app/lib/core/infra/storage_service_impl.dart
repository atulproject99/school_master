import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:schoo_app/core/domain/storage_service.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageLocalServiceImpl extends StroageSevice {
  StorageLocalServiceImpl({required this.storage});
  final FlutterSecureStorage storage;

  @override
  Future<void> addData(String key, String data) async {
    try {
      final pref = await SharedPreferences.getInstance();

      await pref.setString(key, data);
    } catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Future<String?> getData(String key) async {
    final pref = await SharedPreferences.getInstance();

    ///  final data = await storage.read(key: key);
    final data = pref.getString(key);
    return data ?? "";
  }

  @override
  Future<Map<String, String>> getCustomHeader() async {
    final pref = await SharedPreferences.getInstance();

    ///  final data = await storage.read(key: key);
    final accessToken = pref.getString(AppUrl.userToken);
    // var accessToken = await storage.read(key: AppUrl.userToken);

    var customHeaders = {
      'content-type': 'application/json',
      "Accept": "application/json"
    };
    if (accessToken!.trim().isNotEmpty) {
      customHeaders.addAll({
        'Authorization': "Bearer $accessToken",
      });
      return customHeaders;
    } else {
      return {};
    }
  }

  @override
  Future<void> removeData() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
