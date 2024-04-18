import 'package:dio/dio.dart';

abstract class ApiException implements Exception {}

class ApiExceptionMessage implements ApiException {
  final String message;

  ApiExceptionMessage(this.message);

  @override
  String toString() => message;
}

class InternalServerError implements ApiException {}

class NotFound implements ApiException {
  final Response res;

  NotFound(this.res);

  @override
  String toString() {
    final resData = res.data as Map;

    if (resData['message'] != null) {
      return resData['message'].toString();
    }
    return resData['Message'].toString();
  }
}

class UnAuthorized implements ApiException {
  final Response res;

  UnAuthorized(this.res);

  @override
  String toString() {
    final resData = res.data as Map;

    if (resData['message'] != null) {
      return resData['message'].toString();
    }
    return resData['Message'].toString();
  }
}

class NoInternetConnection implements ApiException {}
