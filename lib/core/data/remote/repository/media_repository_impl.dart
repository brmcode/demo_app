import 'package:demo_app/common/exception/failure.dart';
import 'package:demo_app/core/data/remote/api/media_api.dart';
import 'package:demo_app/core/data/remote/dio_error_mapper.dart';
import 'package:demo_app/core/data/remote/dio_provider.dart';
import 'package:demo_app/core/domain/repository/media_repository.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_repository_impl.g.dart';

@Riverpod(keepAlive: true)
MediaRepository mediaRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return _MediaRepository(MediaApi(dio));
}

class _MediaRepository implements MediaRepository {
  final MediaApi _api;
  const _MediaRepository(this._api);

  @override
  Future<Result<List<int>, Failure>> getImage({required String fileName}) async {
    try {
      final response = await _api.getImage(fileName);
      return Success(response.data);
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }

  @override
  Future<Result<String?, Failure>> uploadImage({required MultipartFile file}) async {
    try {
      final response = await _api.uploadImage(file);
      return Success(response.data.data);
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }
}
