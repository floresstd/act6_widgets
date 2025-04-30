import 'package:flutter/material.dart';
import 'package:floresrutas/pagina_uno.dart';
import 'package:floresrutas/pagina_dos.dart';
import 'package:floresrutas/pagina_tres.dart';
import 'package:floresrutas/Ejercicio_uno.dart';
import 'package:floresrutas/Ejercicio_dos.dart';
import 'package:floresrutas/Ejercicio_tres.dart';
import 'package:floresrutas/Ejercicio_cuatro.dart';
import 'package:floresrutas/Ejercicio_cinco.dart';
import 'package:floresrutas/Ejercicio_seis.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/ejercicio1': (context) => const EjercicioUno(),
        '/ejercicio2': (context) => const EjercicioDos(),
        '/ejercicio3': (context) => const EjercicioTres(),
        '/ejercicio4': (context) => const EjercicioCuatro(),
        '/ejercicio5': (context) => const EjercicioCinco(),
        '/ejercicio6': (context) => const EjercicioSeis(),
      },
    );
  }
}
