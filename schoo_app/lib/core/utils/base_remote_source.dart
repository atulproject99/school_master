import 'package:dio/dio.dart';

abstract class BaseRemoteSource {
  final dio = Dio();

  Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api) async {
    Response<T> response = await api;

    return response;
  }
}
