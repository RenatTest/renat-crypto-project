import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/bloc/crypto_exchanges_bloc.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/bloc/crypto_exchanges_state.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/ui/widgets/crypto_exchanges_exception_text.dart';
import 'package:renat_crypto_project/features/crypto_exchanges/presentation/ui/widgets/crypto_exchanges_item.dart';

class CryptoExchangesPage extends StatelessWidget {
  const CryptoExchangesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Crypto Exchanges', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: BlocBuilder<CryptoExchangesBloc, CryptoExchangesState>(
        builder: (context, state) {
          if (state is CryptoExchangesStateLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.deepOrange,
                backgroundColor: Colors.white,
              ),
            );
          }
          if (state is CryptoExchangesStateError) {
            return Center(
              child: CryptoExchangesExceptionText(
                exceptionText: state.exception.toString(),
              ),
            );
          }

          if (state is CryptoExchangesStateLoaded) {
            if (state.cryptoExchanges.isEmpty) {
              return Center(
                child: CryptoExchangesExceptionText(
                  exceptionText: 'No crypto exchanges found',
                ),
              );
            }
            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: kIsWeb ? 400 : double.infinity,
                ),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: state.cryptoExchanges.length,
                  itemBuilder: (context, index) {
                    final title = state.cryptoExchanges[index].title;
                    final info = state.cryptoExchanges[index].info;
                    final link = state.cryptoExchanges[index].link;
                    final logo = state.cryptoExchanges[index].logo;

                    return CryptoExchangesItem(
                      title: title,
                      logo: logo,
                      info: info,
                      link: link,
                    );
                  },
                ),
              ),
            );
          }

          return Container();
        },
      ),
    );
  }
}
