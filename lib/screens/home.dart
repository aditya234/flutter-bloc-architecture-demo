import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/screens/bloc_demo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BlocDemo()));
              },
              child: Text('Random Color Contianer'),
            )
          ],
        ),
      ),
    );
  }
}
