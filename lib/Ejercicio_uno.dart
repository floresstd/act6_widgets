import 'package:flutter/material.dart';

class EjercicioUno extends StatefulWidget {
  const EjercicioUno({Key? key}) : super(key: key);

  @override
  State<EjercicioUno> createState() => _EjercicioUnoState();
}

class _EjercicioUnoState extends State<EjercicioUno> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejercicio Uno',
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
          SizedBox(height: 20),
          const Center(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'Legalese',
              applicationName: 'Flutter App',
              applicationVersion: 'version 1.0.0',
              aboutBoxChildren: [
                Text('This is a text created by Flutter Mapp'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
