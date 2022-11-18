import 'package:freezed_annotation/freezed_annotation.dart';
part 'upi_payment_state.freezed.dart';

@freezed
class UpiPaymentState with _$UpiPaymentState {
  const factory UpiPaymentState.initial() = _Initial;
  const factory UpiPaymentState.success(String trsanctionId) = _Success;
  const factory UpiPaymentState.failure(String trsanctionId) = _Failure;
  const factory UpiPaymentState.cancel(String trsanctionId) = _Cancel;
}
