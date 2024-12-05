import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.cyanAccent,
    Colors.pinkAccent,
    Colors.lightBlue,
    Colors.teal,
    Colors.amber,
  ];

  Stream<Color> getClors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
    });
  }
}
