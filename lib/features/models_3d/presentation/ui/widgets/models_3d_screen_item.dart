import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/router/page_names.dart';

class Models3dScreenItem extends StatelessWidget {
  const Models3dScreenItem({
    required this.modelAndroid,
    required this.modelIos,
    required this.image,
    super.key,
  });

  final String image;
  final String modelAndroid;
  final String modelIos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 250,
        width: 250,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => context.goNamed(
            ScreenNames.model3dPage,
            queryParameters: {
              'modelAndroid': modelAndroid,
              'modelIos': modelIos,
            },
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: image,
              imageBuilder: (context, imageProvider) => Image.network(
                image,
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
              placeholder: (context, url) => SizedBox(
                height: 250,
                width: 250,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              errorWidget: (context, url, error) =>
                  Center(child: Icon(Icons.image)),
            ),
          ),
        ),
      ),
    );
  }
}
