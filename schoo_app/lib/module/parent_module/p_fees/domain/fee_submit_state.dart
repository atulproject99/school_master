import 'package:freezed_annotation/freezed_annotation.dart';
part 'fee_submit_state.freezed.dart';

@freezed
class FeeSubmitState with _$FeeSubmitState {
  const factory FeeSubmitState.initial() = _Initial;
  const factory FeeSubmitState.submitted(String status) = _Submitted;
  const factory FeeSubmitState.failure(String msg) = _Failure;
}
