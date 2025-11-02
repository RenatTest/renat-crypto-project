import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:renat_crypto_project/core/network/crypto_exchanges_api/crypto_exchanges_api_base.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/data/data_source/models/crypto_exchanges_dto.dart';

class CryptoExchangesFirebaseApi implements CryptoExchangesApi {
  @override
  Stream<List<CryptoExchangesDto>> getCryptoExchanges() {
    return FirebaseFirestore.instance
        .collection('crypto_exchanges')
        .snapshots()
        .map((snapshot) {
          return snapshot.docs.map((doc) {
            return CryptoExchangesDto.fromMap(doc.data());
          }).toList();
        });
  }
}
