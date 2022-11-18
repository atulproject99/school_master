import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/application/login_notifier.dart';
import 'package:schoo_app/authentication/domain/auth_service.dart';
import 'package:schoo_app/authentication/domain/login_state.dart';
import 'package:schoo_app/authentication/infra/auth_service_impl.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthServiceImpl();
});

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  final service = ref.watch(authServiceProvider);

  return LoginNotifier(service);
});
