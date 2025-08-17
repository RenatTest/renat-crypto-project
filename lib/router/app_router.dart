import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/app/page_names.dart';
import 'package:renat_crypto_project/features/home_page/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: ScreenNames.homePage,
      builder: (context, state) => const HomePage(),
    ),
  ],
);
