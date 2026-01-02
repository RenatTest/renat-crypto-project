import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/features/crypto_resources/presentation/ui/widgets/crypto_resources_exception_text.dart';
import 'package:renat_crypto_project/features/models_3d/presentation/bloc/models_3d_bloc.dart';
import 'package:renat_crypto_project/features/models_3d/presentation/bloc/models_3d_event.dart';
import 'package:renat_crypto_project/features/models_3d/presentation/bloc/models_3d_state.dart';
import 'package:renat_crypto_project/features/models_3d/presentation/ui/widgets/models_3d_screen_item.dart';

class Models3dScreen extends StatelessWidget {
  const Models3dScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 700;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('3D models list', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () =>
                context.read<Models3dBloc>().add(Models3dEventLoad()),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<Models3dBloc, Models3dState>(
          builder: (context, state) {
            if (state is Models3dStateLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrange,
                  backgroundColor: Colors.white,
                ),
              );
            }
            if (state is Models3dStateError) {
              return Center(
                child: CryptoResourcesExceptionText(
                  exceptionText: state.exception.toString(),
                ),
              );
            }

            if (state is Models3dStateLoaded) {
              if (state.models3d.isEmpty) {
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
                  itemCount: state.models3d.length,
                  itemBuilder: (context, index) {
                    final image = state.models3d[index].image;
                    final modelAndroid = state.models3d[index].modelAndroid;
                    final modelIos = state.models3d[index].modelIos;

                    return Models3dScreenItem(
                      image: image,
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
