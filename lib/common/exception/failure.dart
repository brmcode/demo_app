sealed class Failure {
  final String message;
  const Failure(this.message);
}

// Network error — Dio throw, timeout, no internet
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network error occurred']);
}

// Server error — API return 4xx, 5xx
class ServerFailure extends Failure {
  final int? statusCode;
  const ServerFailure(super.message, {this.statusCode});
}

// ข้อมูลไม่พบ — 404
class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Resource not found']);
}

// Parse error — JSON แปลงไม่ได้
class ParseFailure extends Failure {
  const ParseFailure([super.message = 'Failed to parse response']);
}

// Validation error — ข้อมูล input ไม่ถูกต้อง (มาจาก domain layer)
class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}

// Unknown / unexpected error
class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Unknown error occurred']);
}
