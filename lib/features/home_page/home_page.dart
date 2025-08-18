import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/home_page/cubit/price_coins_cubit.dart';
import 'package:renat_crypto_project/features/home_page/cubit/price_coins_cubit_state.dart';
import 'package:renat_crypto_project/widgets/crypto_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Renat Crypto Project',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: BlocBuilder<PriceCoinsCubit, PriceCoinsCubitState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 10,
              children: [
                CryptoText(
                  coin: 'BTC: ',
                  value: state.btcPrice,
                  color: Colors.deepOrange,
                ),
                CryptoText(
                  coin: 'ETH: ',
                  value: state.ethPrice,
                  color: Colors.deepPurple,
                ),
                CryptoText(
                  coin: 'TON: ',
                  value: state.tonPrice,
                  color: Colors.lightBlueAccent,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
