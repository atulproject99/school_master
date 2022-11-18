import 'package:dio/dio.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';
import 'package:schoo_app/module/student_module/study_material/domain/study_material_service.dart';

class StudyMaterialServiceImpl extends BaseRemoteSource
    implements StudyMaterialService {
  StudyMaterialServiceImpl({required this.header});
  final Future<Map<String, String>> header;
  @override
  Future<List<StudyMaterial>> getStudyMaterial() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.getStudyMaterial,
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;

        return data.map((e) => StudyMaterial.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
