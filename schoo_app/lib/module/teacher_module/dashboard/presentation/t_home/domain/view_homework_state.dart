import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';

part 'view_homework_state.freezed.dart';

@freezed
class ViewHomeworkState with _$ViewHomeworkState {
  const factory ViewHomeworkState.initial() = _Initial;
  const factory ViewHomeworkState.isLoading() = _IsLoading;
  const factory ViewHomeworkState.notLoading() = _NotLoading;
  const factory ViewHomeworkState.data(List<Homework> homeworkList) = _Data;
  const factory ViewHomeworkState.noData() = _noData;
  const factory ViewHomeworkState.failure(String msg) = _Failure;
}
