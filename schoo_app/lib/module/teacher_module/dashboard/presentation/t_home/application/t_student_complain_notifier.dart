import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/student_complain_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class StudentComplaintsNotifier extends StateNotifier<StudentComplaintsState> {
  StudentComplaintsNotifier(this.service)
      : super(const StudentComplaintsState.initial());

  final TeacherService service;
}
