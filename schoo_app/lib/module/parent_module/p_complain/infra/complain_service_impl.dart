import 'package:dio/dio.dart';
import 'package:schoo_app/core/domain/app_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:schoo_app/core/presentation/url/app_url.dart';
import 'package:schoo_app/core/utils/base_remote_source.dart';
import 'package:schoo_app/core/utils/error_handler.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain.dart';
import 'package:schoo_app/module/parent_module/p_complain/domain/complain_service.dart';

class ComplainServiceImpl extends BaseRemoteSource implements ComplainService {
  ComplainServiceImpl(this.header);
  final Future<Map<String, String>> header;

  @override
  Future<List<Complain>> getComplains(String studentId) async {
    print(studentId);
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.complainDetails,
        data: {"studentid": studentId},
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];

      if (status == "success") {
        final data = response.data['data'] as List;

        return data.map((e) => Complain.fromJson(e)).toList();
      } else {
        throw UnimplementedError(msg);
      }
    } on DioError catch (e) {
      throw UnimplementedError(handleDioError(e).message);
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }

  @override
  Future<Either<AppFailure, Unit>> replyComplain(
      String complainId, String response) async {
    final dioCall = dio.post(AppUrl.baseUrl + AppUrl.complainResponse,
        data: {"complaintsid": complainId, "response": response},
        options: Options(headers: await header));
    try {
      final response = await callApiWithErrorParser(dioCall);
      final status = response.data['status'];
      final msg = response.data['message'];
      if (status == "success") {
        return right(unit);
      } else {
        return left(AppFailure.serverError(msg));
      }
    } on DioError catch (e) {
      return left(AppFailure.serverError(handleDioError(e).message));
    } catch (e) {
      return left(AppFailure.serverError(e.toString()));
    }
  }
}
