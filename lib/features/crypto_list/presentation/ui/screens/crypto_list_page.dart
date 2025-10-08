// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/cubit/crypto_list_cubit.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/cubit/crypto_list_state.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/ui/widgets/crypto_coin_card.dart';

class CryptoListPage extends StatelessWidget {
  const CryptoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Crypto List', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: BlocBuilder<CryptoListCubit, CryptoListState>(
          builder: (context, state) {
            return switch (state.status) {
              CryptoListStatus.initial => const Center(
                child: Text('Crypto List data', style: TextStyle(fontSize: 24)),
              ),

              CryptoListStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),

              CryptoListStatus.loaded => Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: kIsWeb ? 400 : double.infinity,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.cryptoList?.cryptoList?.length,
                          itemBuilder: (context, index) {
                            final coin =
                                state.cryptoList?.cryptoList?[index]['coin']
                                    .toString() ??
                                'Coin';

                            final price =
                                state.cryptoList?.cryptoList?[index]['price']
                                    .toStringAsFixed(5)
                                    .toString() ??
                                '0';

                            final image =
                                state
                                    .cryptoList
                                    ?.cryptoList?[index]['coinImage']
                                    .toString() ??
                                'Coin image';

                            final changePrice =
                                (((state.cryptoList?.cryptoList?[index]['price'] -
                                                state
                                                    .cryptoList
                                                    ?.cryptoList?[index]['priceOpen24Hour']) /
                                            state
                                                .cryptoList
                                                ?.cryptoList?[index]['priceOpen24Hour']) *
                                        100)
                                    .toStringAsFixed(2)
                                    .toString();

                            return CryptoCoinCard(
                              coinName: coin,
                              coinPrice: price,
                              coinImage: image,
                              coinChange: changePrice,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              CryptoListStatus.error => Center(
                child: Text(
                  state.errorMessage ?? 'Error',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            };
          },
        ),
      ),
    );
  }
}
