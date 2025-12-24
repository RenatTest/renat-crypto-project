# CRYPTO PROJECT

This project was created to monitor changes in cryptocurrencies and popular resources for trading.

## WEB SITE

https://renat-crypto-project.web.app/

## PROJECT STRUCTURE

```plaintext

lib
├── core
│   └── network
│       ├── crypto_exchanges_api
│       │   ├── crypto_exchanges_api_base.dart
│       │   └── firebase
│       │       └── crypto_exchanges_firebase_api.dart
│       ├── crypto_list_api
│       │   ├── crypto_list_api_base.dart
│       │   ├── http
│       │   │   └── crypto_list_http_api.dart
│       │   └── retrofit
│       │       ├── crypto_list_retrofit_api.dart
│       │       └── crypto_list_retrofit_api.g.dart
│       └── crypto_resources_api
│           ├── crypto_resourses_api_base.dart
│           └── firebase
│               └── crypto_resources_firebase_api.dart
├── di
│   └── di.dart
├── features
│   ├── app
│   │   └── page_names.dart
│   ├── crypto_exchanges
│   │   ├── data
│   │   │   ├── data_source
│   │   │   │   ├── crypto_exchanges_data_source.dart
│   │   │   │   └── models
│   │   │   │       └── crypto_exchanges_dto.dart
│   │   │   └── repository
│   │   │       ├── crypto_exchanges_repository.dart
│   │   │       └── entities
│   │   │           └── crypto_exchanges_entity.dart
│   │   └── presentation
│   │       ├── bloc
│   │       │   ├── crypto_exchanges_bloc.dart
│   │       │   ├── crypto_exchanges_event.dart
│   │       │   └── crypto_exchanges_state.dart
│   │       └── ui
│   │           ├── screens
│   │           │   └── crypto_exchanges_page.dart
│   │           └── widgets
│   │               ├── crypto_exchanges_exception_text.dart
│   │               ├── crypto_exchanges_item.dart
│   │               ├── crypto_exchanges_item_button.dart
│   │               ├── crypto_exchanges_item_logo.dart
│   │               └── crypto_exchanges_item_text.dart
│   ├── crypto_list
│   │   ├── data
│   │   │   ├── data_source
│   │   │   │   ├── crypto_list_data_source.dart
│   │   │   │   └── models
│   │   │   │       └── crypto_list_dto
│   │   │   │           └── crypto_list_dto
│   │   │   │               ├── crypto_list_dto.dart
│   │   │   │               └── crypto_list_dto.g.dart
│   │   │   └── repository
│   │   │       ├── crypto_list_repository.dart
│   │   │       └── entities
│   │   │           └── crypto_list_entity.dart
│   │   └── presentation
│   │       ├── cubit
│   │       │   ├── crypto_list_cubit.dart
│   │       │   └── crypto_list_state.dart
│   │       └── ui
│   │           ├── screens
│   │           │   └── crypto_list_page.dart
│   │           └── widgets
│   │               ├── coin_change.dart
│   │               ├── coin_text.dart
│   │               └── crypto_coin_card.dart
│   ├── crypto_resources
│   │   ├── data
│   │   │   ├── data_source
│   │   │   │   ├── crypto_resources_data_source.dart
│   │   │   │   └── models
│   │   │   │       └── crypto_resources_dto
│   │   │   │           └── crypto_resources_dto.dart
│   │   │   └── repository
│   │   │       ├── crypto_resources_repository.dart
│   │   │       └── entities
│   │   │           └── crypto_resources_entity.dart
│   │   └── presentation
│   │       ├── bloc
│   │       │   ├── crypto_resources_bloc.dart
│   │       │   ├── crypto_resources_event.dart
│   │       │   └── crypto_resources_state.dart
│   │       └── ui
│   │           ├── screens
│   │           │   └── crypto_resources_page.dart
│   │           └── widgets
│   │               ├── crypto_resources_exception_text.dart
│   │               ├── crypto_resources_item.dart
│   │               ├── crypto_resources_item_text.dart
│   │               └── crypto_resources_item_text_button.dart
│   └── home_page
│       └── presentation
│           ├── cubit
│           │   ├── price_coins_cubit.dart
│           │   ├── price_coins_cubit_state.dart
│           │   └── price_coins_repository.dart
│           └── ui
│               ├── screens
│               │   └── home_page.dart
│               └── widgets
│                   ├── crypto_text.dart
│                   └── home_page_button.dart
├── main.dart
├── router
│   └── app_router.dart
└── utils
    └── firebase_options.dart

```

## PROJECT TECHNOLOGIES

- Navigation - go_router
- State Management - flutter_bloc (bloc, cubit)
- DI - get_it
- API - Firebase, https://min-api.cryptocompare.com
- Networking - Dio + Retrofit
