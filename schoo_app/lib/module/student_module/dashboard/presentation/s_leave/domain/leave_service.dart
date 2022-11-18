import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/leave_data.dart';

abstract class LeaveService {
  Future<Either<AppFailure, Unit>> addLeave(
      String fromDate, String toDate, String reason);
  Future<List<LeaveData>> getAllLeave();
}
