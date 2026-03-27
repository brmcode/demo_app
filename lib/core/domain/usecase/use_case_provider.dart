import 'package:demo_app/core/data/remote/repository/media_repository_impl.dart';
import 'package:demo_app/core/domain/usecase/media_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'use_case_provider.g.dart';

@riverpod
GetImageUseCase getAvatarUseCase(Ref ref) {
  final mediaRepository = ref.watch(mediaRepositoryProvider);
  return GetImageUseCase(mediaRepository);
}

@riverpod
UploadImageUseCase uploadAvatarUseCase(Ref ref) {
  final mediaRepository = ref.watch(mediaRepositoryProvider);
  return UploadImageUseCase(mediaRepository);
}
