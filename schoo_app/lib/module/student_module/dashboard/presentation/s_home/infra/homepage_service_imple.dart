import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/application_form.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/attendence.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/homepage_service.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/notice.dart';
import 'package:schoo_app/module/student_module/fees/domain/fees_history.dart';

class HomepageServiceImple extends BaseRemoteSource with HomepageService {
  HomepageServiceImple({required this.header});
  final Future<Map<String, String>> header;

  @override
  Future<List<Attendance>> getAttendance() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.studentDashboard,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['data']['attendance'] as List;
        var list = data.map((e) => Attendance.fromJson(e)).toList();
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<List<Notice>> getNotice() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.studentDashboard,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['data']['notice'] as List;
        var list = data.map((e) => Notice.fromJson(e)).toList();
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError();
    }
  }

  @override
  Future<ApplicationForm> getApplicationForm() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.applicationForm,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];

      print(response.data);
      if (status == "success") {
        var data = response.data['data'];
        var list = ApplicationForm.fromJson(data);
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      print(handleDioError(e).message);
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<AppFailure, Unit>> updateToken(String token) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.sendToken,
        data: {"device_token": token}, options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        print(response.data);
        return right(unit);
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<List<FeesHistory>> getFeesDetails() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.feesHistory,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      print(response);
      if (status == "success") {
        var data = response.data['data'];
        var fees = data['feedetail'] as List;

        var list = fees.map((e) => FeesHistory.fromJson(e)).toList();
        return list;
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<String> getSyllabus() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.viewSyllabus,
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;
        if (data.isEmpty) {
          return "";
        } else {
          return data[0]['syllabus'];
        }
      } else {
        return "";
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<List<Complain>> getComplain() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.studentComplain,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];

      if (status == "success") {
        var data = response.data['data'] as List;
        if (data.isEmpty) {
          return [];
        } else {
          var list = data.map((e) => Complain.fromJson(e)).toList();
          return list;
        }
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
