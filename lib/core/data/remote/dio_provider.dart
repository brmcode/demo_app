import 'package:demo_app/features/auth/data/remote/auth_api.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage_provider.dart';
import 'package:demo_app/core/data/remote/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter/foundation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

// @Riverpod(keepAlive: true) — ปิด autoDispose
// เพราะ Dio ควรอยู่ตลอด app lifecycle ไม่ควรถูก dispose
@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://10.12.83.16:8080',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  if (kDebugMode) {
    dio.interceptors.addAll([
      LogInterceptor(requestBody: true, responseBody: true),
      HttpFormatter(),
    ]);
  }

  return dio;
}

@Riverpod(keepAlive: true)
Dio dioWithAuth(Ref ref) {
  final dio = ref.watch(dioProvider);
  final secureStorage = ref.watch(secureStorageProvider);
  final authApi = ref.watch(authApiProvider);

  // Create a new Dio instance with auth interceptor
  final authDio = Dio(dio.options);

  // Copy existing interceptors
  authDio.interceptors.addAll(dio.interceptors);

  // Add auth interceptor
  authDio.interceptors.add(AuthInterceptor(secureStorage, authApi));

  return authDio;
}

// Retrofit client — keepAlive เพราะอ้างอิง Dio ที่ keepAlive อยู่แล้ว
@Riverpod(keepAlive: true)
AuthApi authApi(Ref ref) {
  return AuthApi(ref.watch(dioProvider));
}

// Auth API with auth interceptor for protected endpoints
@Riverpod(keepAlive: true)
AuthApi authApiWithAuth(Ref ref) {
  return AuthApi(ref.watch(dioWithAuthProvider));
}
