import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/due_oayment_state.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fees_service.dart';

class DueFeesPayNotifier extends StateNotifier<DuePaymentState> {
  DueFeesPayNotifier(this.service) : super(const DuePaymentState.initial());
  final FeesService service;

  Future<void> payDueAmount(
      String amount, String date, BuildContext context) async {
    state = const DuePaymentState.initial();
    MyLoader.showLoader(context, "");
    final data = await service.payDueFee(amount, date);
    Navigator.of(context).pop();
    state = data.fold((l) => DuePaymentState.failure(l.msg),
        (r) => const DuePaymentState.success());
  }
}
