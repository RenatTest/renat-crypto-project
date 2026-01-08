import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/home_page/presentation/cubit/price_coins_cubit.dart';
import 'package:renat_crypto_project/features/home_page/presentation/cubit/price_coins_cubit_state.dart';
import 'package:renat_crypto_project/features/home_page/presentation/ui/widgets/crypto_text.dart';
import 'package:renat_crypto_project/features/home_page/presentation/ui/widgets/home_page_button.dart';
import 'package:renat_crypto_project/router/page_names.dart';

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
                HomePageButton(
                  buttonText: 'Show crypto list',
                  onPressed: () => context.goNamed(ScreenNames.cryptoListPage),
                ),
                HomePageButton(
                  buttonText: 'Crypto Resourses',
                  onPressed: () =>
                      context.goNamed(ScreenNames.cryptoResourcesPage),
                ),
                HomePageButton(
                  buttonText: 'Crypto Exchanges',
                  onPressed: () =>
                      context.goNamed(ScreenNames.cryptoExchangesPage),
                ),
                HomePageButton(
                  buttonText: '3d models',
                  onPressed: () => context.goNamed(ScreenNames.models3dPage),
                ),
                HomePageButton(
                  buttonText: '3d models new',
                  onPressed: () => _showDialog(context),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (context) {
      final formKey = GlobalKey<FormState>();
      final codeController = TextEditingController();
      var code = '';

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 2.0, color: Colors.white),
        ),
        child: Container(
          width: 220,
          height: 220,
          decoration: BoxDecoration(color: Colors.black),
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.lock, color: Colors.white),
                  FormField<String>(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Code cannot be empty';
                      }
                      return value.length > 10
                          ? null
                          : 'Please enter a correct code';
                    },
                    builder: (FormFieldState<String> field) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            controller: codeController,
                            onChanged: (codeValue) {
                              field.didChange(codeValue);
                              code = codeValue;
                            },
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: 'Enter code',
                              labelStyle: const TextStyle(color: Colors.white),
                              hintText: 'Enter code',
                              hintStyle: const TextStyle(color: Colors.white70),
                              filled: true,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                              ),

                              errorText: field.errorText,
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  HomePageButton(
                    buttonText: 'Enter code',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context
                          ..pop()
                          ..goNamed(ScreenNames.models3dNewPage, extra: code);

                        codeController.clear();
                        code = '';
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
