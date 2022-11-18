import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_state.freezed.dart';

@freezed
class TokenState with _$TokenState {
  const factory TokenState.initial() = _Initial;
  const factory TokenState.success() = _Success;
  const factory TokenState.failed(String msg) = _Failed;
}
