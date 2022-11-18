import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/domain/school_detail_service.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_snackbar.dart';
import 'package:schoo_app/core/presentation/upi_pay.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/upi_payment_state.dart';

class UpiPaymentNotifier extends StateNotifier<UpiPaymentState> {
  UpiPaymentNotifier(this._service) : super(const UpiPaymentState.initial());
  final SchoolService _service;
  Future<void> doTransaction(ApplicationMeta appMeta, String orderId,
      String amount, WidgetRef ref, BuildContext context) async {
    state = const UpiPaymentState.initial();
    final schoolDetails = await _service.getSchoolDetails();
    log("upi key ${schoolDetails.upiKey}");
    if (schoolDetails.upiKey == null) {
      AppSnackBar.showInSnackBar("Upi address not found", context);
      Navigator.of(context).pop();
      return;
    }
    final UpiTransactionResponse response = await UpiPay.initiateTransaction(
      amount: amount.trim(),
      app: appMeta.upiApplication,
      receiverName: 'Vidyaan',
      receiverUpiAddress: schoolDetails.upiKey!,
      transactionRef: "${DateTime.now().millisecond}",
      transactionNote: 'For Fees',
    );
    final status = response.status;
    if (status == UpiTransactionStatus.success) {
      state = UpiPaymentState.success(response.txnId ?? "");
    } else if (status == UpiTransactionStatus.failure) {
      state = UpiPaymentState.failure(response.txnId ?? "");
    } else {
      state = UpiPaymentState.cancel(response.txnId ?? "");
    }
  }
}
