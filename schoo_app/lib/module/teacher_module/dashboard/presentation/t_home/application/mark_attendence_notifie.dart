import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/mark_attendence_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class MarkAttendanceNotifier extends StateNotifier<MarkAttendenceState> {
  MarkAttendanceNotifier(this._service)
      : super(const MarkAttendenceState.initial());
  final TeacherService _service;

  Future<void> markAttendence(List<int> studentId, String session,
      String classId, String date, BuildContext context) async {
    state = const MarkAttendenceState.initial();
    MyLoader.showLoader(context, "");
    final data =
        await _service.attendanceMark(studentId, session, classId, date);
    Navigator.of(context).pop();
    state = data.fold((l) => MarkAttendenceState.failure(l.msg),
        (r) => const MarkAttendenceState.success());
  }
}
