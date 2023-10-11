
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Colores extends StatefulWidget {
  const Colores({super.key});

  @override
  State<Colores> createState() => _ColoresState();
}

class _ColoresState extends State<Colores> {
  int changeColor = 0;
  List<Color> colores = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.amber,
    Colors.lime,
    Colors.indigo,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
  ];
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize32 = TextStyle(fontSize: 32.0, color: colores[changeColor]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        elevation: 2.0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Cambio de color', style: fontSize32),
             
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
           changeColor= Random().nextInt(10);
          });
        },
      ),
    );
  }
}