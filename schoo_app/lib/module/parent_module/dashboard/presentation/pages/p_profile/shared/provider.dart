import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/authentication/domain/user.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/application/update_notifier.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/domain/p_update_state.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/domain/parent_service.dart';
import 'package:schoo_app/module/parent_module/dashboard/presentation/pages/p_profile/infra/parent_service_impl.dart';

final parentServiceProvider = Provider.autoDispose<ParentService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();

  return ParentServiceImpl(header);
});

final updateProvider =
    StateNotifierProvider.autoDispose<UpdateNotifier, ParentUpdateState>((ref) {
  final service = ref.watch(parentServiceProvider);
  return UpdateNotifier(service);
});

final parentDetailsProvider = FutureProvider.autoDispose<User>((ref) async {
  final service = ref.watch(parentServiceProvider);
  return service.getUser();
});
