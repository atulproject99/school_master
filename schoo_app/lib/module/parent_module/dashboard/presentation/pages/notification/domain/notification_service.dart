import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/notification/domain/notification.dart';

abstract class NotificationService {
  Future<List<Notification>> getNotifications();
}
