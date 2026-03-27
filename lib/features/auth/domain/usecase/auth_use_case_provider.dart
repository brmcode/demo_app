import 'package:demo_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:demo_app/features/auth/domain/usecase/google_sign_in_use_case.dart';
import 'package:demo_app/features/auth/domain/usecase/sign_in_use_case.dart';
import 'package:demo_app/features/auth/domain/usecase/sign_out_use_case.dart';
import 'package:demo_app/features/auth/domain/usecase/sign_up_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_use_case_provider.g.dart';

@Riverpod(keepAlive: true)
GoogleSignInUseCase googleSignInUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return GoogleSignInUseCase(authRepository);
}

@Riverpod(keepAlive: true)
SignInUseCase signInUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignInUseCase(authRepository);
}

@riverpod
SignOutUseCase signOutUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignOutUseCase(authRepository);
}

@riverpod
SignUpUseCase signUpUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignUpUseCase(authRepository);
}
