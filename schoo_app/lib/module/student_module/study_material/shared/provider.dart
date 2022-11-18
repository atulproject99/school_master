import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/shared/provider.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material_service.dart';
import 'package:schoo_app/module/student_module/study_material/infra/study_material_service_impl.dart';

final studyServiceProvider = Provider.autoDispose<StudyMaterialService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();
  return StudyMaterialServiceImpl(header: header);
});

final getStudyMaterialProvider =
    FutureProvider.autoDispose<List<StudyMaterial>>((ref) async {
  final service = ref.watch(studyServiceProvider);
  return service.getStudyMaterial();
});
