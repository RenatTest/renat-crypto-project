import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:renat_crypto_project/core/network/crypto_list_api/http/crypto_list_http_api.dart';
import 'package:renat_crypto_project/core/network/models_3d/models_3d_api_base.dart';
import 'package:renat_crypto_project/features/models_3d/data/data_source/models/models_3d_dto.dart';

class Models3dFirebaseApi implements Models3dApi {
  @override
  Future<List<Models3dDto>> getModels3d() async {
    var news = <Models3dDto>[];

    try {
      final QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('models_3d')
          .get();

      news = snapshot.docs
          .map((doc) {
            final data = doc.data();
            if (data is Map<String, dynamic>) {
              return Models3dDto.fromMap(data);
            } else {
              return null;
            }
          })
          .whereType<Models3dDto>()
          .toList();
    } catch (e) {
      throw CustomServerError(errorMessage: e.toString());
    }
    return news;
  }
}
