import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/features/auth/application/state/sign_in_state.dart';
import 'package:demo_app/features/auth/application/validator/auth_validator.dart';
import 'package:demo_app/features/auth/domain/usecase/sign_in_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_provider.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  @override
  SignInState build() => const SignInInitial();

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    final errors = AuthValidator.validateSignInForm(
      email: email,
      password: password,
    );

    if (errors.isNotEmpty) {
      state = SignInError(ValidationFailure(errors.values.first));
      return;
    }

    state = const SignInLoading();

    final useCase = ref.read(signInUseCaseProvider);
    final result = await useCase(
      SignInParams(
        email: email,
        password: password,
        // role default เป็น 'USER' อยู่แล้วใน SignInParams
      ),
    );

    result.whenSuccess((user) => state = SignInSuccess(user));
    result.whenError((failure) => state = SignInError(failure));
  }

  void reset() => state = const SignInInitial();
}
