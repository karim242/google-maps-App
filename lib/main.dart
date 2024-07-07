import 'package:flutter/material.dart';
import 'package:google_map_apps/widgets/custom_camera_position.dart';

void main() {
  runApp(const TestGoogleMap());
}

class TestGoogleMap extends StatelessWidget {
  const TestGoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomCameraPosition(),
    );
  }
}

