import 'package:demo_app/core/data/remote/dio_error_mapper.dart';
import 'package:demo_app/core/domain/entities/failure.dart';
import 'package:demo_app/features/media/data/datasources/media_remote_datasource.dart';
import 'package:demo_app/features/media/domain/repositories/media_repository.dart';
import 'package:dio/dio.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_repository_impl.g.dart';

@Riverpod(keepAlive: true)
MediaRepository mediaRepository(Ref ref) => _MediaRepositoryImpl(ref.watch(mediaRemoteDataSourceProvider));

final class _MediaRepositoryImpl implements MediaRepository {
  const _MediaRepositoryImpl(this._dataSource);
  final MediaRemoteDataSource _dataSource;

  @override
  Future<Result<List<int>, Failure>> getAvatar({
    required String fileName,
  }) async {
    try {
      final response = await _dataSource.getAvatar(fileName);
      return Success(response.data);
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }

  @override
  Future<Result<String?, Failure>> uploadAvatar({
    required MultipartFile file,
  }) async {
    try {
      final response = await _dataSource.uploadAvatar(file);
      return Success(response.data.data);
    } on DioException catch (e) {
      return Error(mapDioError(e));
    } catch (_) {
      return const Error(UnknownFailure());
    }
  }
}
