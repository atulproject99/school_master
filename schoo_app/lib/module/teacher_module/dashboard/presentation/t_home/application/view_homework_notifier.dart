import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/view_homework_state.dart';

class ViewHomeworkNotifier extends StateNotifier<ViewHomeworkState> {
  ViewHomeworkNotifier(this._service)
      : super(const ViewHomeworkState.initial());
  final TeacherService _service;
  Future<void> viewHomework(String session, String classId, String date) async {
    state = const ViewHomeworkState.initial();
    state = const ViewHomeworkState.isLoading();
    final data = await _service.viewHomework(session, classId, date);
    state = const ViewHomeworkState.notLoading();
    state = data.fold(
        (l) => ViewHomeworkState.failure(l.msg),
        (r) => r.isEmpty
            ? const ViewHomeworkState.noData()
            : ViewHomeworkState.data(r));
  }
}
