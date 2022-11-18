import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:schoo_app/core/domain/basic_details.dart';
import 'package:schoo_app/core/domain/school_detail_service.dart';
import 'package:schoo_app/core/domain/sechool_detail.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';

class SchoolServiceImpl extends BaseRemoteSource implements SchoolService {
  SchoolServiceImpl(this.header);
  final Future<Map<String, String>> header;

  @override
  Future<SchoolDetails> getSchoolDetails() async {
    log("header ${await header}");
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.branchDetail,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        SchoolDetails fees = SchoolDetails.fromJson(response.data['data']);
        return fees;
      } else {
        throw UnimplementedError(message);
      }
    } on DioError catch (e) {
      print(e.message);
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      print(e.toString());

      throw UnimplementedError(e.toString());
    }
  }

  @override
  Future<BasicDetails> getBasicDetails() async {
    final dioCall = dio.get(AppUrl.baseUrl + AppUrl.schoolProfile,
        options: Options(headers: await header));

    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final message = response.data['message'];
      if (status == "success") {
        BasicDetails fees = BasicDetails.fromJson(response.data['data']);
        return fees;
      } else {
        throw UnimplementedError(message);
      }
    } on DioError catch (e) {
      print(e.message);
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      print(e.toString());

      throw UnimplementedError(e.toString());
    }
  }

  final _message = FirebaseMessaging.instance;
  @override
  Future<String> getToken() async {
    try {
      final token = await _message.getToken();
      return token!;
    } catch (e) {
      throw UnimplementedError();
    }
  }
}
