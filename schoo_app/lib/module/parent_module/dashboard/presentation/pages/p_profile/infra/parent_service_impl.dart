import 'package:dio/dio.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/domain/parent_service.dart';

class ParentServiceImpl extends BaseRemoteSource implements ParentService {
  ParentServiceImpl(this.header);
  final Future<Map<String, String>> header;

  @override
  Future<Either<AppFailure, Unit>> updatePassword(String currentPassword,
      String newPassword, String confirmPassword) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.passwordUpdate,
        data: {
          "current_password": currentPassword,
          "password": newPassword,
          "confirm_password": confirmPassword
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
  Future<Either<AppFailure, Unit>> updateProfile(
      String name, String email, String userName) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.profileUpdate,
        data: {"name": name, "email": email, "username": userName},
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      print(response.data);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        return right(unit);
      } else {
        return left(const AppFailure.serverError("Try Again"));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<User> getUser() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.parentDetails,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['data']['profile'];
        print(data[0]);
        return User.fromJson(data);
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
