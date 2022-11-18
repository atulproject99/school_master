import 'package:freezed_annotation/freezed_annotation.dart';

part 'mark_attendence_state.freezed.dart';

@freezed
class MarkAttendenceState with _$MarkAttendenceState {
  const factory MarkAttendenceState.initial() = _Initial;
  const factory MarkAttendenceState.success() = _Success;

  const factory MarkAttendenceState.failure(String msg) = _Failure;
}
