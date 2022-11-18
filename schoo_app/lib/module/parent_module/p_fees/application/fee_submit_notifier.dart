import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fee_submit_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fees_service.dart';

class FeeSubmitNotifier extends StateNotifier<FeeSubmitState> {
  FeeSubmitNotifier(this.service) : super(const FeeSubmitState.initial());
  final FeesService service;
  Future<void> updateFees(
      BuildContext context,
      List<int> feedId,
      String feeDepositDate,
      String paymentStatus,
      String trasactionId,
      String totlaFee,
      String discount,
      String fixedAmount,
      String totalAmount,
      String nextDepositDate,
      String studentId) async {
    state = const FeeSubmitState.initial();
    MyLoader.showLoader(context, '');
    final data = await service.feesSubmit(
        feedId,
        feeDepositDate,
        paymentStatus,
        trasactionId,
        totlaFee,
        discount,
        fixedAmount,
        totalAmount,
        nextDepositDate,
        studentId);
    Navigator.of(context).pop();
    state = data.fold((l) => FeeSubmitState.failure(l.msg),
        (r) => FeeSubmitState.submitted(paymentStatus));
  }
}
