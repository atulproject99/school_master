import 'package:freezed_annotation/freezed_annotation.dart';
part 'p_update_state.freezed.dart';

@freezed
class ParentUpdateState with _$ParentUpdateState {
  const factory ParentUpdateState.initital() = _Initital;
  const factory ParentUpdateState.updated() = _Update;
  const factory ParentUpdateState.failure(String msg) = _Failure;
}
