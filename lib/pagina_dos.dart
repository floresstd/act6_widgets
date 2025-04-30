import 'dart:html';

import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  get quot => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Dos',
          style: const TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Color(0xff5526ff),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: Color(0xffffc139),
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Color(0xff1d1d1d)),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("ver pantalla"),
            ),
          ),
        ],
      ),
    );
  }
}
