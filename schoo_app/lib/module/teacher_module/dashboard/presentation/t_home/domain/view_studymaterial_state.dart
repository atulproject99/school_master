import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';
part 'view_studymaterial_state.freezed.dart';

@freezed
class ViewStudyMaterialState with _$ViewStudyMaterialState {
  const factory ViewStudyMaterialState.initial() = _Initial;
  const factory ViewStudyMaterialState.isLoading() = _IsLoading;
  const factory ViewStudyMaterialState.notLoading() = _NotLoading;
  const factory ViewStudyMaterialState.data(List<StudyMaterial> tStudent) =
      _Data;
  const factory ViewStudyMaterialState.noData() = _noData;
  const factory ViewStudyMaterialState.failure(String msg) = _Failure;
}
