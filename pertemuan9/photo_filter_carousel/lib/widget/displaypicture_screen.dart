import 'package:flutter/material.dart';
import 'filter_carousel.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display Picture - 2141720053')),
      body: PhotoFilterCarousel(imagePath: imagePath),
    );
  }
}