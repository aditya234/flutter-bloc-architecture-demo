import 'package:flutter/material.dart';

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
          child: Container(),
//          child: BlocProvider(
//            bloc: ColorBloc(),
//            child: Column(
//              children: <Widget>[
//                Child1(),
//                Child2(),
//              ],
//            ),
//          ),
        ),
      ),
    );
  }
}
