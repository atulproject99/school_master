import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/t_student.dart';
part 't_student_state.freezed.dart';

@freezed
class TStudentState with _$TStudentState {
  const factory TStudentState.initial() = _Initial;
  const factory TStudentState.isLoading() = _IsLoading;
  const factory TStudentState.notLoading() = _NotLoading;
  const factory TStudentState.data(List<TStudent> tStudent) = _Data;
  const factory TStudentState.noData() = _noData;
  const factory TStudentState.failure(String msg) = _Failure;
}
