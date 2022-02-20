import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GarlicGantt'),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[Text("Add a recipe")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  child: const Text('+'),
                  onPressed: () {},
                ),
                FloatingActionButton(
                  child: const Text('X'),
                  onPressed: () {},
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}



/*class _GarlicAppState extends State<GarlicApp> {
  String msg = 'Flutter RaisedButton Example';
  @override
 
}
*/