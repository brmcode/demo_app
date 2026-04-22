import 'package:demo_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:demo_app/features/auth/domain/usecases/google_sign_in_usecase.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_up_then_sign_in_usecase.dart';
import 'package:demo_app/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_usecase_provider.g.dart';

@Riverpod(keepAlive: true)
SignInUseCase signInUseCase(Ref ref) => SignInUseCase(ref.watch(authRepositoryProvider));

@Riverpod(keepAlive: true)
GoogleSignInUseCase googleSignInUseCase(Ref ref) => GoogleSignInUseCase(ref.watch(authRepositoryProvider));

@riverpod
SignOutUseCase signOutUseCase(Ref ref) => SignOutUseCase(ref.watch(authRepositoryProvider));

@riverpod
SignUpUseCase signUpUseCase(Ref ref) => SignUpUseCase(ref.watch(authRepositoryProvider));

@Riverpod(keepAlive: true)
SignUpThenSignInUseCase signUpThenSignInUseCase(Ref ref) => SignUpThenSignInUseCase(ref.watch(authRepositoryProvider));
