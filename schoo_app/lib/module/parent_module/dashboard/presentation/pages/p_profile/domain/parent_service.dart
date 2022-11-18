import 'package:dartz/dartz.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/domain/app_failure.dart';

abstract class ParentService {
  Future<Either<AppFailure, Unit>> updateProfile(
      String name, String email, String userName);

  Future<Either<AppFailure, Unit>> updatePassword(
      String currentPassword, String newPassword, String confirmPassword);

  Future<User> getUser();
}
