import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schoo_app/module/teacher_module/dashboard/presentation/t_home/domain/subject.dart';
part 'class_subject_state.freezed.dart';

@freezed
class ClassSubjectState with _$ClassSubjectState {
  const factory ClassSubjectState.initial() = _Initial;
  const factory ClassSubjectState.isLoading() = _IsLoading;
  const factory ClassSubjectState.notLoading() = _NotLoading;
  const factory ClassSubjectState.data(List<Subject> tStudent) = _Data;
  const factory ClassSubjectState.noData() = _noData;
  const factory ClassSubjectState.failure(String msg) = _Failure;
}
