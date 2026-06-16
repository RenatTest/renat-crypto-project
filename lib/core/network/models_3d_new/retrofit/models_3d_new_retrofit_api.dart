import 'package:dio/dio.dart';
import 'package:renat_crypto_project/core/network/models_3d_new/models_3d_new_api_base.dart';
import 'package:renat_crypto_project/features/models_3d_new/data/data_source/models/models3d_new_dto/models3d_new_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'models_3d_new_retrofit_api.g.dart';

@RestApi(baseUrl: 'https://generation-admin.freegen.games')
abstract class Models3dNewRetrofitApiImpl implements Models3dNewApi {
  factory Models3dNewRetrofitApiImpl(Dio dio, {String baseUrl}) =
      _Models3dNewRetrofitApiImpl;

  @override
  @GET('/api/model3d/list')
  Future<Models3dNewDto> getModels3dNew({
    @Header('Authorization') String? token,
  });
}
