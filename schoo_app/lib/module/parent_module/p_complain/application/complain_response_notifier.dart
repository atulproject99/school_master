import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain_reponse_state.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain_service.dart';

class ComplainResponseNotifier extends StateNotifier<ComplainResponseState> {
  ComplainResponseNotifier(this.service)
      : super(const ComplainResponseState.initial());

  final ComplainService service;

  Future<void> complainResponse(
      String complainId, String response, BuildContext context) async {
    state = const ComplainResponseState.initial();
    MyLoader.showLoader(context, "Wait..");

    final data = await service.replyComplain(complainId, response);
    Navigator.of(context).pop();
    Navigator.of(context).pop();
    state = data.fold((l) => ComplainResponseState.failed(l.msg),
        (r) => const ComplainResponseState.success());
  }
}
