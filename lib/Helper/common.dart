import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food_ninja/Helper/api_client.dart';
import 'package:food_ninja/env.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefsProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
);
final ssProvider = Provider<FlutterSecureStorage>(
  (ref) => const FlutterSecureStorage(),
);

final dioProvider = Provider<Dio>((_) {
  final dio = Dio(
    BaseOptions(
      baseUrl: kBaseUrl,
      validateStatus: (status) => true,
      headers: {
        'Accept': 'application/json',
      },
    ),
  );
  return dio;
});

final apiClientProvider = Provider<CHttpClient>(
  (ref) => CHttpClient(
    ref.read(dioProvider),
    ref.read(ssProvider),
  ),
);
