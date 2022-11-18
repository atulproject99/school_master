import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/application/toke_update_notifier.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/application_form.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/attendence.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/homepage_service.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/notice.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/token_state.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/infra/homepage_service_imple.dart';
import 'package:schoo_app/module/student_module/fees/domain/fees_history.dart';

final homePageProvider = Provider.autoDispose<HomepageService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();
  return HomepageServiceImple(header: header);
});

//notice list

final noticeProvider = FutureProvider.autoDispose<List<Notice>>((ref) async {
  final service = ref.watch(homePageProvider);
  return service.getNotice();
});

// attendance list

final attendanceProvider =
    FutureProvider.autoDispose<List<Attendance>>((ref) async {
  final service = ref.watch(homePageProvider);
  return service.getAttendance();
});

//application form

final applicationFormProvider =
    FutureProvider.autoDispose<ApplicationForm>((ref) async {
  final service = ref.watch(homePageProvider);
  return service.getApplicationForm();
});

//update token

final updateTokenProvider =
    StateNotifierProvider.autoDispose<TokeUpdateNotifier, TokenState>((ref) {
  final service = ref.watch(homePageProvider);
  return TokeUpdateNotifier(service);
});

//

final feesHistoryProvider =
    FutureProvider.autoDispose<List<FeesHistory>>((ref) async {
  final service = ref.watch(homePageProvider);
  return service.getFeesDetails();
});

// get syllabus

final getSyllabusProvider = FutureProvider.autoDispose<String>((ref) async {
  final service = ref.watch(homePageProvider);
  return service.getSyllabus();
});

//get comlain

final studentComplainProvider =
    FutureProvider.autoDispose<List<Complain>>((ref) async {
  final service = ref.watch(homePageProvider);
  return service.getComplain();
});
