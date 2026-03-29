import 'package:demo_app/core/domain/exception/failure.dart';
import 'package:dio/dio.dart';

Failure mapDioError(DioException e) => switch (e.type) {
  DioExceptionType.connectionTimeout || DioExceptionType.receiveTimeout || DioExceptionType.sendTimeout => const NetworkFailure('Request timed out'),
  DioExceptionType.connectionError => const NetworkFailure('No internet connection'),
  DioExceptionType.badResponse => ServerFailure(
    _extractErrorMessage(e.response?.data),
    statusCode: e.response?.statusCode,
  ),
  _ => const UnknownFailure(),
};

String _extractErrorMessage(dynamic data) {
  if (data is Map<String, dynamic>) {
    final message = data['message'];
    if (message is String && message.isNotEmpty) {
      return message;
    }
  }

  return 'Server error';
}
