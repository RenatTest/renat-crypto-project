import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/di/di.dart';
import 'package:renat_crypto_project/features/app/page_names.dart';
import 'package:renat_crypto_project/features/crypto_list/data/repository/crypto_list_repository.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/cubit/crypto_list_cubit.dart';
import 'package:renat_crypto_project/features/crypto_list/presentation/ui/screens/crypto_list_page.dart';
import 'package:renat_crypto_project/features/home_page/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: ScreenNames.homePage,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'crypto-list-page',
          name: ScreenNames.cryptoListPage,
          builder: (context, state) => BlocProvider(
            create: (context) =>
                CryptoListCubit(getIt.get<CryptoListRepository>())
                  ..getCryptoList(),
            child: const CryptoListPage(),
          ),
        ),
      ],
    ),
  ],
);
