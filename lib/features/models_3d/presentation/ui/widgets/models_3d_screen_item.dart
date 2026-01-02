import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:renat_crypto_project/router/page_names.dart';

class Models3dScreenItem extends StatelessWidget {
  const Models3dScreenItem({
    required this.name,
    required this.image,
    required this.modelAndroid,
    required this.modelIos,
    super.key,
  });

  final String name;
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
              'name': name,
              'modelAndroid': modelAndroid,
              'modelIos': modelIos,
            },
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: image,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 3.0),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
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
              errorWidget: (context, url, error) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 3.0),
                ),
                child: Icon(Icons.image, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
