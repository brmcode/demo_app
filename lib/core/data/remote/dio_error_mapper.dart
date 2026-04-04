import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:dio/dio.dart';

Failure mapDioError(DioException e) => switch (e.type) {
  DioExceptionType.connectionTimeout || DioExceptionType.receiveTimeout || DioExceptionType.sendTimeout => const NetworkFailure('Request timed out'),
  DioExceptionType.connectionError => const NetworkFailure('No internet connection'),
  DioExceptionType.badResponse => ServerFailure(
    _extractMessage(e.response?.data),
    statusCode: e.response?.statusCode,
  ),
  _ => const UnknownFailure(),
};

String _extractMessage(dynamic data) {
  if (data is Map<String, dynamic>) {
    final msg = data['message'];
    if (msg is String && msg.isNotEmpty) return msg;
  }
  return 'Server error';
}
