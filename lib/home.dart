import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double azimuth = 20.0; // Adjust for horizontal rotation
  double distance = 1.0; // Adjust distance for zoom level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image container
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Asset/back2.jpg'), // Replace with your image path
                fit: BoxFit.cover, // Adjust as per your requirement
              ),
            ),
          ),
          // ModelViewer overlay
          Center(
            child: Container(
              height: 700,
              width: 700,
              child: ModelViewer(
                src: 'https://models.readyplayer.me/666e6bf72f7b0356e01da4f5.glb',
                alt: 'A 3D model of an astronaut',
                ar: true,
                arModes: ['scene-viewer', 'webxr', 'quick-look'],
                cameraOrbit: '${azimuth}deg  ${distance}m',
                autoRotate: true,
                disableZoom: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
