import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Models3dScreen extends StatelessWidget {
  const Models3dScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ModelViewer(
          src: defaultTargetPlatform == TargetPlatform.iOS
              ? 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz'
              : 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
          alt: 'A 3D model of an astronaut',
          ar: true,
          autoRotate: true,
          disableZoom: false,
          iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
        ),
      ),
    );
  }
}
