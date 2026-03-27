import 'package:demo_app/core/data/remote/dio_provider.dart';
import 'package:demo_app/core/data/response_result.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_api.g.dart';

@RestApi()
abstract class MediaApi {
  factory MediaApi(Dio dio, {String baseUrl}) = _MediaApi;

  @GET('/cdn/avatars/{fileName}')
  @DioResponseType(ResponseType.bytes)
  Future<HttpResponse<List<int>>> getAvatar(@Path('fileName') String fileName);

  @POST('/api/uploads/avatar')
  @MultiPart()
  Future<HttpResponse<ResponseResult<String?>>> uploadAvatar(@Part(name: 'file') MultipartFile file);
}

@Riverpod(keepAlive: true)
MediaApi mediaApi(Ref ref) {
  return MediaApi(ref.watch(dioWithAuthProvider));
}
