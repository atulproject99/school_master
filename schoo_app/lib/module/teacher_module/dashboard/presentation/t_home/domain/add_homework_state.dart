import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_homework_state.freezed.dart';

@freezed
class AddHomeWorkState with _$AddHomeWorkState {
  const factory AddHomeWorkState.initial() = _Initial;
  const factory AddHomeWorkState.success() = _Success;

  const factory AddHomeWorkState.failure(String msg) = _Failure;
}
