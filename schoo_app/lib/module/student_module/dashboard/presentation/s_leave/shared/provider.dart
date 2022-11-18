import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/application/add_leave_notifier.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/add_leave_state.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/leave_data.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/leave_service.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/infra/leave_service_imple.dart';

final leaveServiceProvider = Provider.autoDispose<LeaveService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();
  return LeaveServiceImple(header: header);
});

final addLeaveProvider =
    StateNotifierProvider.autoDispose<AddLeaveNotifier, AddLeaveState>((ref) {
  final service = ref.watch(leaveServiceProvider);
  return AddLeaveNotifier(service);
});

final getLeaveProvider =
    FutureProvider.autoDispose<List<LeaveData>>((ref) async {
  final service = ref.watch(leaveServiceProvider);
  return service.getAllLeave();
});
