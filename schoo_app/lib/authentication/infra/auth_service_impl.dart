import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:schoo_app/authentication/domain/auth_service.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';

class AuthServiceImpl extends BaseRemoteSource implements AuthService {
  //login

  @override
  Future<Either<AppFailure, Map<String, dynamic>>> login(
      String userName, String password) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.signIn,
        data: {"username": userName, "password": password});
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        User user = User.fromJson(response.data['data']);
        final token = response.data['token'];
        return right({"user": user, "token": token});
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  
}
