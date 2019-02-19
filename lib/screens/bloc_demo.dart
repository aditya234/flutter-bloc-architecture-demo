import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/bloc_providers/bloc_provider.dart';
import 'package:flutter_bloc_demo/model/color_model.dart';

class BlocDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "BLoC Architecture Demo",
      )),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: BlocProvider(
            bloc: ColorModel(),
            child: Column(
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
