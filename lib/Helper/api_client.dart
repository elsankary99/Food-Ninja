import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    hide Options;
import 'package:food_ninja/Helper/exception.dart';

Future<Response<T>> validateResponse<T>(
  Future<Response> Function() zone, {
  int? throwIfNot,
}) async {
  try {
    final res = await zone();

    // if (res.statusCode == 200 &&
    //     res.data != null &&
    //     res.data is String &&
    //     (res.data! as String).isEmpty) {
    //   throw EmptyBadResponse();
    // }
    // if (res.data is Map && res.data['error'] != null) {
    //   throw ApiExceptionMessage(
    //     ((res.data['error'] as Map).entries.first).value.first,
    //   );
    // }

    if (res.statusCode == HttpStatus.internalServerError) {
      throw ApiExceptionMessage(
        (res.data as Map<String, dynamic>)['message'] as String,
      );
    }
    switch (res.statusCode) {
      case HttpStatus.unprocessableEntity:
      // throw ApiExceptionMessage(
      //   LValidationException(res.data as Map<String, dynamic>)
      //       .firstErrorMessage!,
      // );

      case HttpStatus.notFound:
      case HttpStatus.badRequest:
        throw NotFound(res);
      case HttpStatus.unauthorized:
        throw UnAuthorized(res);
      default:
        // if (throwIfNot != null && res.statusCode != throwIfNot) {
        //   throw extractError(res.data) ?? res.data as Object;
        // }
        return res as Response<T>;
    }
  } on SocketException {
    throw NoInternetConnection();
  } on DioException catch (e, st) {
    log(e.toString());
    log(st.toString());
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.unknown) {
      throw NoInternetConnection();
    }
    rethrow;
  }
}

Object? extractError(Object? data) {
  if (data is Map) {
    return data['error'];
  }
  return null;
}

/// wrapper around dio to handlers api calls
class CHttpClient {
  final Dio dio;
  final FlutterSecureStorage sStorage;

  CHttpClient(this.dio, this.sStorage);

  Future<String?> get userToken async => sStorage.read(key: 'token');
  // Future<String?> get userToken async =>
  //     Future.value('1|aV92EPjeY9jqmMfEErAG1Tza5hxmgjZ0Y5VUV1spff9edef3');
  // await sStorage.read(key: Keys.userTokenKey) ?? '';

  /// sends a [GET] request to the given [url]

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    bool attachToken = true,
    String? token,
    Object body = const {},
    Duration? sendTimeout,
    Duration? receiveTimeout,
    int? throwIfNot,
  }) =>
      validateResponse(
        () async {
          return dio.get(
            path,
            queryParameters: {
              ...query,
            },
            data: body,
            options: Options(
              headers: {
                if (attachToken)
                  'Authorization': 'Bearer ${token ?? await userToken}',
                ...headers,
              },
              sendTimeout: sendTimeout,
              receiveTimeout: receiveTimeout,
            ),
          );
        },
        throwIfNot: throwIfNot,
      );

  Future<Response<T>> post<T>(
    String path, {
    Object body = const {},
    bool skip500 = false,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    String? contentType,
    bool attachToken = true,
    String? token,
    Duration? sendTimeout,
    Duration? receiveTimeout,
    int? throwIfNot,
  }) =>
      validateResponse<T>(
        () async => dio.post(
          path,
          queryParameters: query,
          data: body,
          options: Options(
            headers: {
              if (attachToken)
                'Authorization': 'Bearer ${token ?? await userToken}',
              ...headers,
            },
            sendTimeout: sendTimeout,
            receiveTimeout: receiveTimeout,
          ),
        ),
        throwIfNot: throwIfNot,
      );

  Future<Response> delete(
    String path, {
    Object body = const {},
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    String? contentType,
    bool attachToken = true,
    String? token,
    Duration? sendTimeout,
    Duration? receiveTimeout,
    int? throwIfNot,
  }) =>
      validateResponse(
        () async => dio.delete(
          path,
          queryParameters: query,
          data: body,
          options: Options(
            headers: {
              if (attachToken)
                'Authorization': 'Bearer ${token ?? await userToken}',
              ...headers,
            },
            sendTimeout: sendTimeout,
            receiveTimeout: receiveTimeout,
          ),
        ),
        throwIfNot: throwIfNot,
      );

  Future<Response> put(
    String path, {
    Object body = const {},
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> query = const {},
    String? contentType,
    bool attachToken = true,
    String? token,
    Duration? sendTimeout,
    Duration? receiveTimeout,
    int? throwIfNot,
  }) =>
      validateResponse(
        () async => dio.put(
          path,
          queryParameters: query,
          data: body,
          options: Options(
            headers: {
              if (attachToken)
                'Authorization': 'Bearer ${token ?? await userToken}',
              ...headers,
            },
            sendTimeout: sendTimeout,
            receiveTimeout: receiveTimeout,
          ),
        ),
        throwIfNot: throwIfNot,
      );
}
