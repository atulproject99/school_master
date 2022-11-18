import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/auth_service.dart';
import 'package:schoo_app/authentication/domain/login_state.dart';
import 'package:schoo_app/core/presentation/common_widget.dart/app_loader.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(this.service) : super(const LoginState.initial());
  final AuthService service;

  Future<void> login(
      String userName, String password, BuildContext context) async {
    state = const LoginState.initial();
    MyLoader.showLoader(context, "Waiting...");
    final data = await service.login(userName, password);
    Navigator.of(context).pop();
    state = data.fold(
        (l) => LoginState.failure(l.msg), (r) => LoginState.authorized(r));
  }
}
