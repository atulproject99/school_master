import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/attendence_student.dart';
part 'student_attendance_state.freezed.dart';

@freezed
class StudentAttendenceState with _$StudentAttendenceState {
  const factory StudentAttendenceState.initial() = _Initial;
  const factory StudentAttendenceState.isLoading() = _IsLoading;
  const factory StudentAttendenceState.notLoading() = _NotLoading;
  const factory StudentAttendenceState.data(List<AttendanceStudent> tStudent) =
      _Data;
  const factory StudentAttendenceState.noData() = _noData;
  const factory StudentAttendenceState.failure(String msg) = _Failure;
}
