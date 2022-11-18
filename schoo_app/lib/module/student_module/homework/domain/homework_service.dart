import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';

abstract class HomeworkService {
  Future<List<Homework>> getHomework();
  Future<Either<AppFailure, Unit>> uploadHomework(
      String homeworkId, File? file);

  Future<String> getHomeworkResponse(int homeworkId);
}
