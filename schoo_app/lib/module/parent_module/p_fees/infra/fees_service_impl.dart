import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/fees_service.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/student_fees.dart';
import 'package:schoo_app/module/parent_module/p_fees/domain/transport_amount.dart';

class FeesServiceImpl extends BaseRemoteSource implements FeesService {
  FeesServiceImpl(this.header);
  final Future<Map<String, String>> header;

  @override
  Future<StudentFees> getStudentFeed(String studetId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.studentDetail,
        data: {"student_id": studetId},
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        StudentFees fees = StudentFees.fromJson(response.data['data']);
        return fees;
      } else {
        throw UnimplementedError(message);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> feesSubmit(
      List<int> feedId,
      String feeDepositDate,
      String paymentStatus,
      String trasactionId,
      String totlaFee,
      String discount,
      String fixedDiscount,
      String totalAmount,
      String nextDepositDate,
      String studentId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.studentDetail,
        data: {
          "feeid[0]": feedId,
          "feedepositedate": feeDepositDate,
          "payment_status": paymentStatus,
          "transaction_id": trasactionId,
          "totalfee": totlaFee,
          "discount": discount,
          "fixed_discount": fixedDiscount,
          "totalamount": totalAmount,
          "nextdepositedate": nextDepositDate,
          "student_id": studentId
        },
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        return right(unit);
      } else {
        return left(AppFailure.serverError(message));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<StudentFees> getFeeDetails() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.feeDetails,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        StudentFees fees = StudentFees.fromJson(response.data['data']);
        return fees;
      } else {
        throw UnimplementedError(message);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> payDueFee(String amount, String date) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.dueFeePay,
        data: {
          "totalamount": amount,
          "payamount": amount,
          "feedepositedate": date,
        },
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        return right(unit);
      } else {
        return left(AppFailure.serverError(message));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<TransportAmount> getTransportAmount(String studentId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.transportFee,
        data: {"student_id": studentId},
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        TransportAmount fees = TransportAmount.fromJson(response.data['data']);
        return fees;
      } else {
        throw UnimplementedError(message);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> submitTutionfee(
      String studentId, String amount, String date) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.submitTutionDueAmount,
        data: {
          "totalamount": amount,
          "studentid": studentId,
          "feedepositedate": date,
        },
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        return right(unit);
      } else {
        return left(AppFailure.serverError(message));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
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
      String studentId) async {
    // ignore: todo
    // TODO: implement trasnportFeesSubmit
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.submitTransportFee,
        data: {
          "transportfeeid[0]": feedId,
          "feedepositedate": feeDepositDate,
          "payment_status": paymentStatus,
          "transaction_id": trasactionId,
          "totalfee": totlaFee,
          "discount": discount,
          "payamount": payAmount,
          "totalamount": totalAmount,
          "nextdepositedate": nextDepositDate,
          "student_id": studentId
        },
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        return right(unit);
      } else {
        return left(AppFailure.serverError(message));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }
}
