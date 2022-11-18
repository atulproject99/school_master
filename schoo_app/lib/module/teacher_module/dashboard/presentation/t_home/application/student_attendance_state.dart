import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/student_attendance_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class StudentAttendenceNotifier extends StateNotifier<StudentAttendenceState> {
  StudentAttendenceNotifier(this._service)
      : super(const StudentAttendenceState.initial());

  final TeacherService _service;

  Future<void> getStudentAttendance(
      String session, String classId, String date) async {
    print(classId);
    state = const StudentAttendenceState.initial();
    state = const StudentAttendenceState.isLoading();
    final data = await _service.getAttendenceOfStudent(date, classId, session);
    state = const StudentAttendenceState.notLoading();
    state = data.fold(
        (l) => StudentAttendenceState.failure(l.msg),
        (r) => r.isEmpty
            ? const StudentAttendenceState.noData()
            : StudentAttendenceState.data(r));
  }
}
