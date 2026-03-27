import 'dart:io';

import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/core/domain/repository/media_repository.dart';
import 'package:demo_app/core/domain/usecase/base_use_case.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

// ------------------ GetImage ------------------

final class GetImageParams {
  final String fileName;

  const GetImageParams({
    required this.fileName,
  });
}

class GetImageUseCase implements UseCase<GetImageParams, List<int>> {
  final MediaRepository _repository;
  const GetImageUseCase(this._repository);

  @override
  Future<Result<List<int>, Failure>> call(GetImageParams params) {
    return _repository.getImage(
      fileName: params.fileName,
    );
  }
}

// ------------------ UploadImage ------------------

final class UploadImageParams {
  final File file;

  const UploadImageParams({
    required this.file,
  });
}

class UploadImageUseCase implements UseCase<UploadImageParams, String?> {
  final MediaRepository _repository;
  const UploadImageUseCase(this._repository);

  @override
  Future<Result<String?, Failure>> call(UploadImageParams params) async {
    final file = await MultipartFile.fromFile(params.file.path);
    return _repository.uploadImage(file: file);
  }
}
