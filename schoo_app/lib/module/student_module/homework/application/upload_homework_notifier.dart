import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework_service.dart';
import 'package:schoo_app/module/student_module/homework/domain/upload_homework_state.dart';

class UploadHomeworkNotifier extends StateNotifier<UploadHomeworkState> {
  UploadHomeworkNotifier(this.service)
      : super(const UploadHomeworkState.initial());

  final HomeworkService service;
  Future<void> uploadHomework(
      BuildContext context, String homeworkId, File? file) async {
    state = const UploadHomeworkState.initial();
    MyLoader.showLoader(context, "");
    final data = await service.uploadHomework(homeworkId, file);
    Navigator.of(context).pop();
    state = data.fold((l) => UploadHomeworkState.failure(l.msg),
        (r) => const UploadHomeworkState.succes());
  }
}
