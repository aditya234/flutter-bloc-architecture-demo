import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/bloc_providers/bloc_provider.dart';
import 'package:flutter_bloc_demo/model/color_model.dart';

class ColorChangeButton extends StatelessWidget {
  ColorModel colorModel;

  @override
  Widget build(BuildContext context) {
    colorModel = BlocProvider.of(context);
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: () {
            colorModel.changeColor();
          },
          child: Text("Change Color"),
          color: Colors.blue,
        ),
      ),
    );
  }
}
