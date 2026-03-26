import 'package:demo_app/core/data/remote/repository/media_repository_impl.dart';
import 'package:demo_app/core/usecase/media_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
GetImageUseCase getImageUseCase(Ref ref) {
  final mediaRepository = ref.watch(mediaRepositoryProvider);
  return GetImageUseCase(mediaRepository);
}

@riverpod
UploadImageUseCase uploadImageUseCase(Ref ref) {
  final mediaRepository = ref.watch(mediaRepositoryProvider);
  return UploadImageUseCase(mediaRepository);
}
