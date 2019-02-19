import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/bloc_providers/bloc_provider.dart';
import 'package:flutter_bloc_demo/model/color_model.dart';

class ColorContainer extends StatelessWidget {
  ColorModel colorModel;

  @override
  Widget build(BuildContext context) {
    colorModel = BlocProvider.of(context);
    return Container(
      child: StreamBuilder(
        initialData: Colors.redAccent,
        stream: colorModel.colorStream,
        builder: (BuildContext context, snapshot) => Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                color: snapshot.data,
              ),
            ),
      ),
    );
  }
}
