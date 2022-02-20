import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int testRes = 0;
  final VoidCallback onPressed = test;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('GarlicGantt'),
          ),
          body: Container(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const RecipeSelector(),
                const RecipeSelector(),
                const RecipeSelector(),
                FloatingActionButton(
                    child: const Icon(Icons.kitchen), onPressed: () {}),
                FloatingActionButton(
                    child: const Text('Carlos Button'), onPressed: onPressed),
              ],
            ),
          ))),
    );
  }
}

class RecipeSelector extends StatefulWidget {
  const RecipeSelector({Key? key}) : super(key: key);

  @override
  State<RecipeSelector> createState() => _RecipeSelectorState();
}

class _RecipeSelectorState extends State<RecipeSelector> {
  String dropdownValue = 'None';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'None',
        'Rosemary Garlic Steak',
        'Everyday Salad',
        'Passionfruit Mousse'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

//PUT YOUR FUNCTION OVER HERE, CARLOS
int test() {
  print('Hello World');
  return 1;
}
