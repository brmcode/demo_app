import 'dart:io';

import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/core/domain/usecases/base_usecase.dart';
import 'package:demo_app/features/media/domain/repositories/media_repository.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

final class UploadAvatarParams {
  const UploadAvatarParams({required this.file});
  final File file;
}

final class UploadAvatarUseCase implements UseCase<UploadAvatarParams, String?> {
  const UploadAvatarUseCase(this._repository);
  final MediaRepository _repository;

  @override
  Future<Result<String?, Failure>> call(UploadAvatarParams input) async {
    final multipart = await MultipartFile.fromFile(input.file.path);
    return _repository.uploadAvatar(file: multipart);
  }
}
