import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/homepage_service.dart';
import 'package:schoo_app/module/student_module/dashboard/presentation/s_home/domain/token_state.dart';

class TokeUpdateNotifier extends StateNotifier<TokenState> {
  TokeUpdateNotifier(this.service) : super(const TokenState.initial());

  final HomepageService service;
  Future<void> updateToken(String token) async {
    state = const TokenState.initial();
    final data = await service.updateToken(token);
    state = data.fold(
        (l) => TokenState.failed(l.msg), (r) => const TokenState.success());
  }
}
