import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/domain/p_update_state.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/domain/parent_service.dart';

class UpdateNotifier extends StateNotifier<ParentUpdateState> {
  UpdateNotifier(this.service) : super(const ParentUpdateState.initital());
  final ParentService service;

  Future<void> updateProfile(
      BuildContext context, String name, String email, String userName) async {
    MyLoader.showLoader(context, "Waiting");
    final data = await service.updateProfile(name, email, userName);
    Navigator.of(context).pop();
    state = data.fold((l) => ParentUpdateState.failure(l.msg),
        (r) => const ParentUpdateState.updated());
  }

  Future<void> updatePassword(BuildContext context, String currentPass,
      String newPass, String newConfirmPass) async {
    MyLoader.showLoader(context, "Waiting");
    final data =
        await service.updatePassword(currentPass, newPass, newConfirmPass);
    Navigator.of(context).pop();
    state = data.fold((l) => ParentUpdateState.failure(l.msg),
        (r) => const ParentUpdateState.updated());
  }
}
