import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/cubit/crypto_list_cubit.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/cubit/crypto_list_state.dart';

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
                child: Column(
                  spacing: 10,
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

                          final coinImage =
                              state.cryptoList?.cryptoList?[index]['coinImage']
                                  .toString() ??
                              'Coin image';

                          return Card(
                            color: Colors.grey,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: const EdgeInsets.all(10),
                            child: ListTile(
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Image.network(height: 85, coinImage),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        coin,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '$price \$',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
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
