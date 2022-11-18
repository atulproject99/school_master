import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_complaint_state.freezed.dart';

@freezed
class AddComplainState with _$AddComplainState {
  const factory AddComplainState.initial() = _Initial;
  const factory AddComplainState.added() = _Added;
  const factory AddComplainState.failure(String msg) = _Failure;
}
