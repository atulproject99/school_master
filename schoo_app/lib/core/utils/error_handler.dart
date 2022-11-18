import 'package:dio/dio.dart';
import 'package:schoo_app/core/utils/exception.dart';

BaseException handleDioError(DioError dioError) {
  switch (dioError.type) {
    case DioErrorType.cancel:
      return BaseException(message: "Request to API server was cancelled");
    case DioErrorType.connectTimeout:
      return BaseException(message: "Connection timeout with API server");
    case DioErrorType.other:
      return BaseException(message: "There is no internet connection");
    case DioErrorType.receiveTimeout:
      return BaseException(
          message: "Receive timeout in connection with API server");
    case DioErrorType.sendTimeout:
      return BaseException(
          message: "Send timeout in connection with API server");
    case DioErrorType.response:
      return BaseException(message: "Something is wrong");
  }
}
