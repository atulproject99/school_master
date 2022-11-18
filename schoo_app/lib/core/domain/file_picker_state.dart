import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'file_picker_state.freezed.dart';

@freezed
class FilePickerState with _$FilePickerState {
  const factory FilePickerState.initial() = _Initial;
  const factory FilePickerState.selectedFile(File file) = _SelectedFile;
  const factory FilePickerState.failure() = _Failure;
}
