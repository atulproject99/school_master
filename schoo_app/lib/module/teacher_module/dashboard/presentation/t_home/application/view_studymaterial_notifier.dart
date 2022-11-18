import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/teacher_service.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/view_studymaterial_state.dart';

class ViewStudyMaterialNotifier extends StateNotifier<ViewStudyMaterialState> {
  ViewStudyMaterialNotifier(this._service)
      : super(const ViewStudyMaterialState.initial());
  final TeacherService _service;
  Future<void> viewStudyMaterial(
      String session, String classId, String date) async {
    state = const ViewStudyMaterialState.initial();
    state = const ViewStudyMaterialState.isLoading();
    final data = await _service.viewStudyMaterial(session, classId, date);
    state = const ViewStudyMaterialState.notLoading();
    state = data.fold(
        (l) => ViewStudyMaterialState.failure(l.msg),
        (r) => r.isEmpty
            ? const ViewStudyMaterialState.noData()
            : ViewStudyMaterialState.data(r));
  }
}
