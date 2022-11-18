import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/student_fees.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/transport_amount.dart';

abstract class FeesService {
  Future<StudentFees> getStudentFeed(String studetId);

  Future<Either<AppFailure, Unit>> feesSubmit(
      List<int> feedId,
      String feeDepositDate,
      String paymentStatus,
      String trasactionId,
      String totlaFee,
      String discount,
      String fixedAmount,
      String totalAmount,
      String nextDepositDate,
      String studentId);

  Future<StudentFees> getFeeDetails();

  Future<Either<AppFailure, Unit>> payDueFee(String amount, String date);

  Future<Either<AppFailure, Unit>> submitTutionfee(
      String studentId, String amount, String date);
  Future<TransportAmount> getTransportAmount(String studentId);

  Future<Either<AppFailure, Unit>> trasnportFeesSubmit(
      List<int> feedId,
      String feeDepositDate,
      String paymentStatus,
      String trasactionId,
      String totlaFee,
      String discount,
      String payAmount,
      String totalAmount,
      String nextDepositDate,
      String studentId);
}
