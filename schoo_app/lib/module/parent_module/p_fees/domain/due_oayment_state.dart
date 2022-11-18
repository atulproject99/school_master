import 'package:freezed_annotation/freezed_annotation.dart';
part 'due_oayment_state.freezed.dart';

@freezed
class DuePaymentState with _$DuePaymentState {
  const factory DuePaymentState.initial() = _Initial;
  const factory DuePaymentState.success() = _Success;
  const factory DuePaymentState.failure(String msg) = _Failure;
}
