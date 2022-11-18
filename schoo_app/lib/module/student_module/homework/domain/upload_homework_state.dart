import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_homework_state.freezed.dart';

@freezed
class UploadHomeworkState with _$UploadHomeworkState {
  const factory UploadHomeworkState.initial() = _Initial;
  const factory UploadHomeworkState.succes() = _Success;
  const factory UploadHomeworkState.failure(String msg) = _Failure;
}
