import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/domain/app_failure.dart';

abstract class AuthService {
  Future<Either<AppFailure, Map<String, dynamic>>> login(
      String userName, String password);

 
}
