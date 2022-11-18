import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/class_subject_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class ClassSubjectNotifier extends StateNotifier<ClassSubjectState> {
  ClassSubjectNotifier(this._service)
      : super(const ClassSubjectState.initial());
  final TeacherService _service;
  Future<void> searchClassSubject(String classId) async {
    state = const ClassSubjectState.initial();
    state = const ClassSubjectState.isLoading();
    final data = await _service.getSubject(classId);
    state = const ClassSubjectState.notLoading();
    state = data.fold(
        (l) => ClassSubjectState.failure(l.msg),
        (r) => r.isEmpty
            ? const ClassSubjectState.noData()
            : ClassSubjectState.data(r));
  }
}
