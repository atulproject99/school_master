import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_studymaterial_state.freezed.dart';

@freezed
class AddStudyMaterialState with _$AddStudyMaterialState {
  const factory AddStudyMaterialState.initial() = _Initial;
  const factory AddStudyMaterialState.success() = _Success;

  const factory AddStudyMaterialState.failure(String msg) = _Failure;
}
