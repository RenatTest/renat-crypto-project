// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/bloc/crypto_resources_bloc.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/bloc/crypto_resources_state.dart';

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
                  'No crypto resources loaded',
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
                    return Card(
                      color: Colors.grey,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        subtitle: Column(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              state.cryptoResources[index]['title']
                                      ?.toString() ??
                                  '',
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              state.cryptoResources[index]['description']
                                      ?.toString() ??
                                  '',
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              state.cryptoResources[index]['link']
                                      ?.toString() ??
                                  '',
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'Arial',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
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
