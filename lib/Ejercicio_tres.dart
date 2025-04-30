import 'package:flutter/material.dart';

//! AnimatedAlign con estructura de Scaffold

class EjercicioTres extends StatefulWidget {
  const EjercicioTres({Key? key}) : super(key: key);

  @override
  State<EjercicioTres> createState() => _EjercicioTresState();
}

class _EjercicioTresState extends State<EjercicioTres> {
  bool selected = false;

  void _toggleAlignment() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Tres',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffde2899),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: _toggleAlignment,
            child: Center(
              child: Container(
                width: double.infinity,
                height: 250.0,
                color: Colors.blueGrey,
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
