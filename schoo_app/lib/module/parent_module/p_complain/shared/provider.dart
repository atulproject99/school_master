import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/parent_module/p_complain/application/complain_response_notifier.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain_reponse_state.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain_service.dart';
import 'package:schoo_app/module/parent_module/p_complain/infra/complain_service_impl.dart';

final complainServiceProvider = Provider.autoDispose<ComplainService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();
  return ComplainServiceImpl(header);
});

final complainListProvider = FutureProvider.autoDispose
    .family<List<Complain>, String>((ref, studentId) async {
  final service = ref.watch(complainServiceProvider);
  return service.getComplains(studentId);
});

final replyComplainProvider = StateNotifierProvider.autoDispose<
    ComplainResponseNotifier, ComplainResponseState>((ref) {
  final service = ref.watch(complainServiceProvider);
  return ComplainResponseNotifier(service);
});
