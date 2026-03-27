import 'package:demo_app/common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class UseCase<I, O> {
  Future<Result<O, Failure>> call(I input);
}

final class NoParams {
  const NoParams();
}
