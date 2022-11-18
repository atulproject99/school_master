import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/student_module/homework/application/upload_homework_notifier.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework_service.dart';
import 'package:schoo_app/module/student_module/homework/domain/upload_homework_state.dart';
import 'package:schoo_app/module/student_module/homework/infra/homework_service_impl.dart';

final homeworkProvider = Provider.autoDispose<HomeworkService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();
  return HomeworkServiceImplement(header: header);
});

final homeworkListProvider =
    FutureProvider.autoDispose<List<Homework>>((ref) async {
  final service = ref.watch(homeworkProvider);
  return service.getHomework();
});

final uploadHomeworkProvider = StateNotifierProvider.autoDispose<
    UploadHomeworkNotifier, UploadHomeworkState>((ref) {
  final service = ref.watch(homeworkProvider);
  return UploadHomeworkNotifier(service);
});
