import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework.dart';
import 'package:schoo_app/module/student_module/homework/domain/homework_service.dart';

class HomeworkServiceImplement extends BaseRemoteSource with HomeworkService {
  HomeworkServiceImplement({required this.header});

  final Future<Map<String, String>> header;

  @override
  Future<List<Homework>> getHomework() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.studentHomework,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      // print(response);
      if (status == "success") {
        var data = response.data['data'] as List;
        if (data.isEmpty) {
          return [];
        } else {
          var list = data.map((e) => Homework.fromJson(e)).toList();
          return list;
        }
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<AppFailure, Unit>> uploadHomework(
      String homeworkId, File? file) async {
    final fileName = file!.path.split('/').last;
    final data = FormData.fromMap({
      "homework_id": homeworkId,
      "upload_homewrok": await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      )
    });
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.uploadResponse,
        data: data, options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      print(response.data);
      return right(unit);
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }

  @override
  Future<String> getHomeworkResponse(int homeworkId) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.viewResponse,
        data: {"homework_id": homeworkId},
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        final data = response.data['data'] as List;

        return data[0]['uploaded_homework'] ?? "";
      } else {
        return "";
      }
    } catch (e) {
      print(e.toString());
      throw UnimplementedError();
    }
  }
}
