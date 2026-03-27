import 'package:demo_app/features/auth/application/validator/sign_up_validator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:demo_app/features/auth/application/state/sign_up_state.dart';
import 'package:demo_app/common/exception/failure.dart';

part 'sign_up_provider.g.dart';

@Riverpod(keepAlive: true)
class SignUpNotifier extends _$SignUpNotifier {
  @override
  SignUpState build() => const SignUpState.initial();

  void updateStep1({required String firstName, required String lastName}) {
    state = SignUpState.data(
      firstName: firstName,
      lastName: lastName,
      email: '',
      password: '',
    );
  }

  void updateStep2({required String email, required String password, required String confirmPassword}) {
    final currentState = state;
    if (currentState is SignUpData) {
      state = currentState.copyWith(
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );
    }
  }

  void updateStep3({String? imagePath}) {
    final currentState = state;
    if (currentState is SignUpData) {
      state = currentState.copyWith(imagePath: imagePath);
    }
  }

  Future<void> submit() async {
    final currentState = state;
    if (currentState is! SignUpData) return;

    // Validate all fields
    final errors = <String>[];
    if (!SignUpValidator.validateFirstName(currentState.firstName).isValid) {
      errors.add('First Name is required');
    }
    if (!SignUpValidator.validateLastName(currentState.lastName).isValid) {
      errors.add('Last Name is required');
    }
    if (!SignUpValidator.validateEmail(currentState.email).isValid) {
      errors.add('Email is invalid');
    }
    if (!SignUpValidator.validatePassword(currentState.password).isValid) {
      errors.add('Password is invalid');
    }
    if (!SignUpValidator.validateConfirmPassword(currentState.password, currentState.confirmPassword).isValid) {
      errors.add('Passwords do not match');
    }

    if (errors.isNotEmpty) {
      state = SignUpState.error(ValidationFailure(errors.join('\n')));
      return;
    }

    state = const SignUpState.loading();

    try {
      // Call backend to create user
      // final user = await ref.read(signUpUseCaseProvider)(...)
      // For demo, we'll mock:
      // final user = User(
      //   id: '1',
      //   firstName: currentState.firstName,
      //   lastName: currentState.lastName,
      //   email: currentState.email,
      //   accessToken: '',
      //   refreshToken: '',
      // );
      // state = SignUpState.success(user);
    } catch (e) {
      state = SignUpState.error(UnknownFailure(e.toString()));
    }
  }
}
