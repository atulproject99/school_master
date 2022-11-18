import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_homework_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class AddHomeworkNotifier extends StateNotifier<AddHomeWorkState> {
  AddHomeworkNotifier(this._service) : super(const AddHomeWorkState.initial());
  final TeacherService _service;
  Future<void> addHomework(
      String session,
      String classId,
      String subjectId,
      File? pdfFile,
      String videoLink,
      String date,
      BuildContext context) async {
    MyLoader.showLoader(context, "");
    state = const AddHomeWorkState.initial();
    final data = await _service.addHmework(
        session, classId, subjectId, pdfFile, videoLink, date);
    Navigator.of(context).pop();
    state = data.fold((l) => AddHomeWorkState.failure(l.msg),
        (r) => const AddHomeWorkState.success());
  }
}
