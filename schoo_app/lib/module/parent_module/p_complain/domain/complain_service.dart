import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain.dart';

abstract class ComplainService {
  Future<List<Complain>> getComplains(String studentId);
  Future<Either<AppFailure, Unit>> replyComplain(
      String complainId, String response);
}
