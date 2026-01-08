import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/ui/widgets/crypto_resources_exception_text.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/bloc/models_3d_new_bloc.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/bloc/models_3d_new_event.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/bloc/models_3d_new_state.dart';
import 'package:renat_crypto_project/features/models_3d_new/presentation/ui/widgets/models_3d_new_screen_item.dart';

class Models3dNewScreen extends StatelessWidget {
  const Models3dNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 700;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('3D models new', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () =>
                context.read<Models3dNewBloc>().add(Models3dNewEventLoad()),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<Models3dNewBloc, Models3dNewState>(
          builder: (context, state) {
            if (state is Models3dNewStateLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrange,
                  backgroundColor: Colors.white,
                ),
              );
            }
            if (state is Models3dNewStateError) {
              return Center(
                child: CryptoResourcesExceptionText(
                  exceptionText: state.exception.toString(),
                ),
              );
            }

            if (state is Models3dNewStateLoaded) {
              if (state.models3dNew.models3dNewList.items.isEmpty) {
                return Center(
                  child: CryptoResourcesExceptionText(
                    exceptionText: 'No 3d models found',
                  ),
                );
              }
              return SizedBox(
                height: isMobile ? MediaQuery.of(context).size.height : 250,
                width: isMobile ? 250 : MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: isMobile ? Axis.vertical : Axis.horizontal,
                  itemCount: state.models3dNew.models3dNewList.items.length,
                  itemBuilder: (context, index) {
                    final gif =
                        state.models3dNew.models3dNewList.items[index].gif;
                    final name =
                        state.models3dNew.models3dNewList.items[index].name;
                    final modelAndroid = state
                        .models3dNew
                        .models3dNewList
                        .items[index]
                        .modelAndroid;
                    final modelIos =
                        state.models3dNew.models3dNewList.items[index].modelIos;

                    return Models3dNewScreenItem(
                      image: gif,
                      name: name,
                      modelAndroid: modelAndroid,
                      modelIos: modelIos,
                    );
                  },
                ),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
