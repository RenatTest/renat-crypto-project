import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:renat_crypto_project/core/network/crypto_list_api/http/crypto_list_http_api.dart';
import 'package:renat_crypto_project/core/network/crypto_resources_api/crypto_resourses_api_base.dart';
import 'package:renat_crypto_project/features/crypto_resources/data/data_source/models/crypto_resources_dto/crypto_resources_dto.dart';

class CryptoResourceApiImpl implements CryptoResourcesApi {
  @override
  Future<List<CryptoResourcesDto>> getCryptoResources() async {
    var cryptoResources = <CryptoResourcesDto>[];

    try {
      final QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('crypto_resources')
          .get();

      cryptoResources = snapshot.docs
          .map((doc) {
            final data = doc.data();
            if (data is Map<String, dynamic>) {
              return CryptoResourcesDto.fromMap(data);
            } else {
              return null;
            }
          })
          .whereType<CryptoResourcesDto>()
          .toList();
    } catch (e) {
      throw CustomServerError(errorMessage: e.toString());
    }
    return cryptoResources;
  }
}
