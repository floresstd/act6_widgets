import 'package:flutter/material.dart';

//! AnimatedContainer con estructura de Scaffold

class EjercicioCuatro extends StatefulWidget {
  const EjercicioCuatro({Key? key}) : super(key: key);

  @override
  State<EjercicioCuatro> createState() => _EjercicioCuatroState();
}

class _EjercicioCuatroState extends State<EjercicioCuatro> {
  bool selected = false;

  void _toggleContainer() {
    setState(() {
      selected = !selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Cuatro',
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
            onTap: _toggleContainer,
            child: Center(
              child: AnimatedContainer(
                width: selected ? 200.0 : 100.0,
                height: selected ? 100.0 : 200.0,
                color: selected ? Color(0xff672def) : Colors.white,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
