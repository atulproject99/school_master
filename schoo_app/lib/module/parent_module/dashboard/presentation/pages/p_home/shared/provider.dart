import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/banner.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/events.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/notice_data.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/phome_service.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/domain/pstudent.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_home/infra/phome_service_impl.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';

final pHomeServiceProvider = Provider.autoDispose<PHomeService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();

  return PHomeServiceImpl(header: header);
});

final pStudentDetailsProvider =
    FutureProvider.autoDispose<List<PStudent>>((ref) async {
  final service = ref.watch(pHomeServiceProvider);

  return service.getStudent();
});

final bannerProvider = FutureProvider.autoDispose<List<Banner>>((ref) async {
  final service = ref.watch(pHomeServiceProvider);

  return service.getBanner();
});

final showEventsProvider =
    FutureProvider.autoDispose<List<Events>>((ref) async {
  final service = ref.watch(pHomeServiceProvider);
  return service.getEvents();
});

final parentNoticeProvider =
    FutureProvider.autoDispose.family<List<NoticeData>, int>((ref, id) async {
  final service = ref.watch(pHomeServiceProvider);
  return service.getNotice(id);
});

final parentHomeworkProvider =
    FutureProvider.autoDispose.family<List<Homework>, int>((ref, id) async {
  final service = ref.watch(pHomeServiceProvider);
  return service.getHomeWork(id);
});
