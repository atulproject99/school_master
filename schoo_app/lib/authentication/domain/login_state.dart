import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.authorized(dynamic data) = _Authorized;
  const factory LoginState.unauthorized() = _Unauthorized;
  const factory LoginState.failure(String msg) = _Failure;
}
