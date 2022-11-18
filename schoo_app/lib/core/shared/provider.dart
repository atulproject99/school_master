import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schoo_app/core/application/file_picker_notifier.dart';
import 'package:schoo_app/core/domain/basic_details.dart';
import 'package:schoo_app/core/domain/file_picker_state.dart';
import 'package:schoo_app/core/domain/school_detail_service.dart';
import 'package:schoo_app/core/domain/sechool_detail.dart';
import 'package:schoo_app/core/domain/storage_service.dart';
import 'package:schoo_app/core/infra/school_service_impl.dart';
import 'package:schoo_app/core/infra/storage_service_impl.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final localStorageProvider = Provider<StroageSevice>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  return StorageLocalServiceImpl(storage: secureStorage);
});

final schoolServiceProvider = Provider.autoDispose<SchoolService>((ref) {
  dynamic header = ref.watch(localStorageProvider).getCustomHeader();
  return SchoolServiceImpl(header);
});

final branchDetailsProvider =
    FutureProvider.autoDispose<SchoolDetails>((ref) async {
  final service = ref.watch(schoolServiceProvider);
  return service.getSchoolDetails();
});

final customHeaderProvider =
    FutureProvider.autoDispose<Map<String, String>>((ref) async {
  var accessToken =
      await ref.watch(localStorageProvider).getData(AppUrl.userToken);

  var customHeaders = {'content-type': 'application/json'};
  if (accessToken!.trim().isNotEmpty) {
    customHeaders.addAll({
      'Authorization': "Bearer $accessToken",
    });
    return customHeaders;
  } else {
    return {};
  }
});

final filePickerProvider =
    StateNotifierProvider.autoDispose<FilePickerNotifier, FilePickerState>(
        (ref) {
  return FilePickerNotifier();
});

final schoolDetailsProvider =
    FutureProvider.autoDispose<SchoolDetails>((ref) async {
  final service = ref.watch(schoolServiceProvider);
  return service.getSchoolDetails();
});

final schoolProfileProvider =
    FutureProvider.autoDispose<BasicDetails>((ref) async {
  final service = ref.watch(schoolServiceProvider);
  return service.getBasicDetails();
});

final getTokenProvider = FutureProvider.autoDispose<String>((ref) async {
  final service = ref.watch(schoolServiceProvider);
  return service.getToken();
});
