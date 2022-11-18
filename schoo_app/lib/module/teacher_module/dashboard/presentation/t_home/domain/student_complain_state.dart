import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/tstudent_complain.dart';
part 'student_complain_state.freezed.dart';

@freezed
class StudentComplaintsState with _$StudentComplaintsState {
  const factory StudentComplaintsState.initial() = _Initial;
  const factory StudentComplaintsState.isLoading() = _IsLoading;
  const factory StudentComplaintsState.notLoading() = _NotLoading;
  const factory StudentComplaintsState.data(List<TStudentComplain> tStudent) =
      _Data;
  const factory StudentComplaintsState.noData() = _noData;
  const factory StudentComplaintsState.failure(String msg) = _Failure;
}
