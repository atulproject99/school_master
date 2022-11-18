import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/add_studymaterial_state.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';

class AddStudyMaterialNotifier extends StateNotifier<AddStudyMaterialState> {
  AddStudyMaterialNotifier(this._service)
      : super(const AddStudyMaterialState.initial());

  final TeacherService _service;

  Future<void> addStudymaterial(
      String session,
      String classId,
      String subjectId,
      File? pdfFile,
      String date,
      BuildContext context) async {
    state = const AddStudyMaterialState.initial();
    MyLoader.showLoader(context, "");
    final data = await _service.addStudymaterial(
        session, classId, subjectId, pdfFile, date);

    Navigator.of(context).pop();
    state = data.fold((l) => AddStudyMaterialState.failure(l.msg),
        (r) => const AddStudyMaterialState.success());
  }
}
