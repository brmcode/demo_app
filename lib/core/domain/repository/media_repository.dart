import 'package:demo_app/common/exception/failure.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class MediaRepository {
  Future<Result<List<int>, Failure>> getImage({
    required String fileName,
  });

  Future<Result<String?, Failure>> uploadImage({
    required MultipartFile file,
  });
}
