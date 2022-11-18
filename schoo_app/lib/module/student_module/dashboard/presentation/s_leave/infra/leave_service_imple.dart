import 'package:dio/dio.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/leave_data.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_leave/domain/leave_service.dart';

class LeaveServiceImple extends BaseRemoteSource implements LeaveService {
  LeaveServiceImple({required this.header});
  final Future<Map<String, String>> header;

  @override
  Future<Either<AppFailure, Unit>> addLeave(
      String fromDate, String toDate, String reason) async {
    print(fromDate + "///" + toDate + "///" + reason);
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.addLeave,
        data: {"from_date": fromDate, "to_date": toDate, "reasone": reason},
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      // final msg = response.data['message'];

      if (status == "success") {
        return right(unit);
      } else {
        return left(const AppFailure.serverError("Something wrong"));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<List<LeaveData>> getAllLeave() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.getAllLeav,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "true") {
        var data = response.data['data'] as List;
        if (data.isEmpty) {
          return [];
        } else {
          var list = data.map((e) => LeaveData.fromJson(e)).toList();
          return list;
        }
      } else {
        return [];
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
