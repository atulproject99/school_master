import 'package:dio/dio.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/notification/domain/notification.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/notification/domain/notification_service.dart';

class NotificationServiceImpl extends BaseRemoteSource
    implements NotificationService {
  NotificationServiceImpl({required this.header});
  final Future<Map<String, String>> header;

  @override
  Future<List<Notification>> getNotifications() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.getNotification,
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;

        return data.map((e) => Notification.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }
}
