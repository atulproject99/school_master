import 'package:freezed_annotation/freezed_annotation.dart';
part 'complain_reponse_state.freezed.dart';

@freezed
class ComplainResponseState with _$ComplainResponseState {
  const factory ComplainResponseState.initial() = _Initial;
  const factory ComplainResponseState.success() = _Success;
  const factory ComplainResponseState.failed(String msg) = _Failed;
}
