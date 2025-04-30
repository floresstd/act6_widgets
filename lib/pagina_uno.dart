import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla uno',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Color(0xffff2626),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los botones verticalmente
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: Text("Ver pantalla 2"),
            ),
            SizedBox(height: 20), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/pantalla3'); // Ajusta la ruta según lo que necesites
              },
              child: Text("Ver pantalla 3"),
            ),
            SizedBox(height: 20), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/ejercicio1'); // Ajusta la ruta según lo que necesites
              },
              child: Text("Ejercicio uno"),
            ),
            SizedBox(height: 20), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/ejercicio2'); // Ajusta la ruta según lo que necesites
              },
              child: Text("Ejercicio dos"),
            ),
            SizedBox(height: 20), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/ejercicio3'); // Ajusta la ruta según lo que necesites
              },
              child: Text("Ejercicio tres"),
            ),
            SizedBox(height: 20), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/ejercicio4'); // Ajusta la ruta según lo que necesites
              },
              child: Text("Ejercicio cuatro"),
            ),
            SizedBox(height: 20), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/ejercicio5'); // Ajusta la ruta según lo que necesites
              },
              child: Text("Ejercicio cinco"),
            ),
            SizedBox(height: 20), // Añade un espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/ejercicio6'); // Ajusta la ruta según lo que necesites
              },
              child: Text("Ejercicio seis"),
            ),
          ],
        ),
      ),
    );
  }
}
