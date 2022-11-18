import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/add_leave_state.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/leave_service.dart';

class AddLeaveNotifier extends StateNotifier<AddLeaveState> {
  AddLeaveNotifier(this._service) : super(const AddLeaveState.initial());
  final LeaveService _service;

  Future<void> addLeave(String fromDate, String toDate, String reason,
      BuildContext context) async {
    state = const AddLeaveState.initial();
    MyLoader.showLoader(context, "");
    final data = await _service.addLeave(fromDate, toDate, reason);
    AutoRouter.of(context).pop();
    state = data.fold((l) => AddLeaveState.failure(l.msg),
        (r) => const AddLeaveState.succes());
  }
}
