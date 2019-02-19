import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/bloc_providers/bloc_provider.dart';

class ColorModel extends BlocBase {
  // Streams of Color
  StreamController streamController = StreamController<Color>.broadcast();

  //sink - for input
  Sink get colorSink => streamController.sink;

  //stream - for output
  Stream<Color> get colorStream => streamController.stream;

  //Disposing of streamController / stream
  @override
  void dispose() {
    streamController.close();
  }

  //Actions
  //action-1 => function to change color
  changeColor() {
    //Adding data to stream ie. giving an input to stream
    //We do it using sink
    colorSink.add(getRandomColor());
  }
}

getRandomColor() {
  Random _random = Random();
  return Color.fromARGB(
      255, _random.nextInt(256), _random.nextInt(256), _random.nextInt(256));
}
