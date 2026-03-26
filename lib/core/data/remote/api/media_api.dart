import 'package:demo_app/core/data/remote/dio_provider.dart';
import 'package:demo_app/core/data/response_result.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'media_api.g.dart';

@RestApi()
abstract class MediaApi {
  factory MediaApi(Dio dio, {String baseUrl}) = _MediaApi;

  @GET('/api/media/image/{fileName}')
  @DioResponseType(ResponseType.bytes)
  Future<HttpResponse<List<int>>> getImage(@Path('fileName') String fileName);

  @POST('/api/media/upload')
  @MultiPart()
  Future<HttpResponse<ResponseResult<String?>>> uploadImage(@Part(name: 'file') MultipartFile file);
}

@Riverpod(keepAlive: true)
MediaApi mediaApi(Ref ref) {
  return MediaApi(ref.watch(dioWithAuthProvider));
}
