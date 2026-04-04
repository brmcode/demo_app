import 'package:demo_app/config/lib/config/app_config.dart';
import 'package:demo_app/core/data/local/secure_storage/secure_storage_provider.dart';
import 'package:demo_app/core/data/remote/interceptors/auth_interceptor.dart';

import 'package:demo_app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

/// Base Dio — no auth header injection.
@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final instance = Dio(
    BaseOptions(
      baseUrl: AppConfig.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: const {'Content-Type': 'application/json'},
    ),
  );
  if (kDebugMode) {
    instance.interceptors.addAll([
      LogInterceptor(requestBody: true, responseBody: true),
      HttpFormatter(),
    ]);
  }
  return instance;
}

/// Dio with automatic token injection + refresh-on-401.
@Riverpod(keepAlive: true)
Dio dioWithAuth(Ref ref) {
  final base = ref.watch(dioProvider);
  final storage = ref.watch(secureStorageProvider);
  final authDs = ref.watch(authRemoteDataSourceProvider);

  final instance = Dio(base.options.copyWith());
  instance.interceptors.addAll(base.interceptors);
  instance.interceptors.add(AuthInterceptor(storage, authDs));
  return instance;
}
