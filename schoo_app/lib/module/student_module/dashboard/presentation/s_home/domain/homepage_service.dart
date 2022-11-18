import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/application_form.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/attendence.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/notice.dart';
import 'package:schoo_app/module/student_module/fees/domain/fees_history.dart';

abstract class HomepageService {
  Future<List<Notice>> getNotice();
  Future<List<Attendance>> getAttendance();
  Future<ApplicationForm> getApplicationForm();

  Future<Either<AppFailure, Unit>> updateToken(String token);

  Future<List<FeesHistory>> getFeesDetails();
  Future<String> getSyllabus();
  Future<List<Complain>> getComplain();
}
