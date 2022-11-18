import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_leave_state.freezed.dart';

@freezed
class AddLeaveState with _$AddLeaveState {
  const factory AddLeaveState.initial() = _Initial;
  const factory AddLeaveState.succes() = _Success;
  const factory AddLeaveState.failure(String msg) = _Failure;
}
