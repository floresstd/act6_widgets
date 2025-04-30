import 'package:flutter/material.dart';

//! AnimatedDefaultTextStyle con estructura de Scaffold

class EjercicioCinco extends StatefulWidget {
  const EjercicioCinco({Key? key}) : super(key: key);

  @override
  State<EjercicioCinco> createState() => _EjercicioCincoState();
}

class _EjercicioCincoState extends State<EjercicioCinco> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  void _toggleTextStyle() {
    setState(() {
      _fontSize = _first ? 90 : 60;
      _color = _first ? Color(0xff000000) : Colors.white10;
      _first = !_first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Cinco',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffde2899),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(),
          const SizedBox(height: 40),
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text('Nava'),
            ),
          ),
          TextButton(
            onPressed: _toggleTextStyle,
            child: const Text("Switch"),
          ),
        ],
      ),
    );
  }
}
