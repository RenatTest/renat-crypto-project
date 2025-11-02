// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/bloc/crypto_resources_bloc.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/bloc/crypto_resources_event.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/bloc/crypto_resources_state.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/ui/widgets/crypto_resources_item.dart';

class CryptoResourcesPage extends StatelessWidget {
  const CryptoResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Crypto Resourses', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () => context.read<CryptoResourcesBloc>().add(
              CryptoResourcesEventLoad(),
            ),
          ),
        ],
      ),
      body: BlocBuilder<CryptoResourcesBloc, CryptoResourcesState>(
        builder: (context, state) {
          if (state is CryptoResourcesStateLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.deepOrange,
                backgroundColor: Colors.white,
              ),
            );
          }
          if (state is CryptoResourcesStateError) {
            return Center(
              child: Text(
                state.exception.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 24, color: Colors.deepOrange),
              ),
            );
          }

          if (state is CryptoResourcesStateLoaded) {
            if (state.cryptoResources.isEmpty) {
              return Center(
                child: Text(
                  'No crypto resources found',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.deepOrange,
                  ),
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
                  itemCount: state.cryptoResources.length,
                  itemBuilder: (context, index) {
                    final title = state.cryptoResources[index].title;
                    final description =
                        state.cryptoResources[index].description;
                    final link = state.cryptoResources[index].link;

                    return CryptoResourcesItem(
                      title: title,
                      description: description,
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
