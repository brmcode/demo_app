import 'package:demo_app/features/media/data/repositories/media_repository_impl.dart';
import 'package:demo_app/features/media/domain/usecases/upload_avatar_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_usecase_provider.g.dart';

@riverpod
UploadAvatarUseCase uploadAvatarUseCase(Ref ref) => UploadAvatarUseCase(ref.watch(mediaRepositoryProvider));
