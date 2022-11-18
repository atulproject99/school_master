import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/domain/file_picker_state.dart';

class FilePickerNotifier extends StateNotifier<FilePickerState> {
  FilePickerNotifier() : super(const FilePickerState.initial());

  Future<void> openFilePicker() async {
    state = const FilePickerState.initial();

    FilePickerResult? result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ["pdf"]);

    if (result != null) {
      File file = File(result.files.single.path!);
      state = FilePickerState.selectedFile(file);
    } else {
      // User canceled the picker
      state = const FilePickerState.failure();
    }
  }
}
