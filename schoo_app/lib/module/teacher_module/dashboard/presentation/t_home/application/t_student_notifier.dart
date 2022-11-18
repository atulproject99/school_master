import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/t_student_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class TStudentNotifier extends StateNotifier<TStudentState> {
  TStudentNotifier(this._service) : super(const TStudentState.initial());

  final TeacherService _service;
}
