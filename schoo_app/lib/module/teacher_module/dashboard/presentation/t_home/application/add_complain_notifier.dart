import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_complaint_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class AddComplainNotifier extends StateNotifier<AddComplainState> {
  AddComplainNotifier(this.service) : super(const AddComplainState.initial());

  final TeacherService service;

  Future<void> addComplain(
      BuildContext context,
      String classId,
      String session,
      String studentId,
      String complainDate,
      String complaitBy,
      String complaint) async {
    state = const AddComplainState.initial();
    MyLoader.showLoader(context, "");
    final data = await service.addStudentComplaints(
        classId, session, studentId, complainDate, complaitBy, complaint);
    Navigator.of(context).pop();
    state = data.fold((l) => AddComplainState.failure(l.msg),
        (r) => const AddComplainState.added());
  }
}
