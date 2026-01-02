import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Model3dScreen extends StatelessWidget {
  const Model3dScreen({
    required this.modelAndroid,
    required this.modelIos,
    super.key,
  });

  final String modelAndroid;
  final String modelIos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('3D model', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: ModelViewer(
        backgroundColor: Colors.black,
        src: modelAndroid,
        alt: '3D model',
        ar: true,
        autoRotate: true,
        disableZoom: false,
        iosSrc: modelIos,
      ),
    );
  }
}
