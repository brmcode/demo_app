import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:multiple_result/multiple_result.dart';

/// Contract for all use cases. [I] = input params, [O] = output type.
abstract interface class UseCase<I, O> {
  Future<Result<O, Failure>> call(I input);
}

/// Use when a use case needs no parameters.
final class NoParams {
  const NoParams();
}
