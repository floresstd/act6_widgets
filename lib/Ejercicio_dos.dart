import 'package:flutter/material.dart';

//! AlertDialog con estructura de Scaffold

class EjercicioDos extends StatefulWidget {
  const EjercicioDos({Key? key}) : super(key: key);

  @override
  State<EjercicioDos> createState() => _EjercicioDosState();
}

class _EjercicioDosState extends State<EjercicioDos> {
  void _mostrarAlerta() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cerrar'),
          ),
        ],
        title: const Text('Flutter Mapp'),
        contentPadding: const EdgeInsets.all(20.0),
        content: const Text('Este es el Alert Dialog'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Dos',
          style: TextStyle(
            color: Color(0xff272727),
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xff5e28de),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: _mostrarAlerta,
              child: const Text('Mostrar Alert Dialog'),
            ),
          ),
        ],
      ),
    );
  }
}
