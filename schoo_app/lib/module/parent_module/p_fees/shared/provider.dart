import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/p_fees/application/due_fees_pay_notifier.dart';
import 'package:schoo_app/module/parent_module/p_fees/application/fee_submit_notifier.dart';
import 'package:schoo_app/module/parent_module/p_fees/application/fees_add_notifier.dart';
import 'package:schoo_app/module/parent_module/p_fees/application/trasnport_amount_notifier.dart';
import 'package:schoo_app/module/parent_module/p_fees/application/tution_fee_notifier.dart';
import 'package:schoo_app/module/parent_module/p_fees/application/upi_payment_notifier.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/due_oayment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fee_details.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fee_submit_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fees_service.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/student_fees.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/transport_amount.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/upi_payment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/infra/fees_service_impl.dart';

final feesServiceProvider = Provider.autoDispose<FeesService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();
  return FeesServiceImpl(header);
});

final studentFeesProvider = FutureProvider.family
    .autoDispose<StudentFees, String>((ref, studetId) async {
  final service = ref.watch(feesServiceProvider);
  return service.getStudentFeed(studetId);
});

final feesTempListProvider =
    StateNotifierProvider.autoDispose<FeesTempList, List<FeeDetails>>((ref) {
  return FeesTempList();
});

//upi payment notifier provider

final upiPaymentProvider =
    StateNotifierProvider.autoDispose<UpiPaymentNotifier, UpiPaymentState>(
        (ref) {
  final service = ref.watch(schoolServiceProvider);
  return UpiPaymentNotifier(service);
});

//update fees

final feeUpdateProvider =
    StateNotifierProvider.autoDispose<FeeSubmitNotifier, FeeSubmitState>((ref) {
  final service = ref.watch(feesServiceProvider);
  return FeeSubmitNotifier(service);
});

final feeDetailsProvider = FutureProvider.autoDispose<StudentFees>((ref) async {
  final service = ref.watch(feesServiceProvider);
  return service.getFeeDetails();
});

final dueAmountProvider =
    StateNotifierProvider.autoDispose<DueFeesPayNotifier, DuePaymentState>(
        (ref) {
  final service = ref.watch(feesServiceProvider);
  return DueFeesPayNotifier(service);
});

final getTransportAmount = FutureProvider.family
    .autoDispose<TransportAmount, String>((ref, studetId) async {
  final service = ref.watch(feesServiceProvider);
  return service.getTransportAmount(studetId);
});

final tutionDueAmountProvider =
    StateNotifierProvider.autoDispose<TutionDueAmountNotifier, DuePaymentState>(
        (ref) {
  final service = ref.watch(feesServiceProvider);
  return TutionDueAmountNotifier(service);
});

final transportFeeUpdateProvider =
    StateNotifierProvider.autoDispose<TransportAmountNotifier, FeeSubmitState>(
        (ref) {
  final service = ref.watch(feesServiceProvider);
  return TransportAmountNotifier(service);
});
