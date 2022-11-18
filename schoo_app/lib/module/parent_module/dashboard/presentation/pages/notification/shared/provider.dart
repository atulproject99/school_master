import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/notification/domain/notification.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/notification/domain/notification_service.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/notification/infra/notification_service_impl.dart';

final notificationServiceProvider =
    Provider.autoDispose<NotificationService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();

  return NotificationServiceImpl(header: header);
});

final notificationProvider =
    FutureProvider.autoDispose<List<Notification>>((ref) async {
  final service = ref.watch(notificationServiceProvider);

  return service.getNotifications();
});
