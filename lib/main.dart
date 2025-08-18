import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:renat_crypto_project/features/home_page/cubit/price_coins_cubit.dart';
import 'package:renat_crypto_project/features/home_page/cubit/price_coins_repository.dart';
import 'package:renat_crypto_project/router/app_router.dart';
import 'package:renat_crypto_project/utils/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PriceCoinsCubit(PriceCoinsBinanceRepository()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
